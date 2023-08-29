# functions in build/core/definitions.mk

define force-save-real-size
$(if $(2), \
	size=$$( $(call get-file-size,$(1)) ); \
	real_size=$(2); \
	if [ $$size -le $$real_size ]; then \
		truncate -s $$real_size $(1); \
	fi \
	, \
	true)
endef

$(INSTALLED_RECOVERYIMAGE_TARGET): $(recovery_ramdisk) $(MKBOOTIMG) $(recovery_kernel)
	@echo -e ${PRT_IMG}"----- Making recovery image ------"${CL_RST}
	$(hide) $(call build-recoveryimage-target, $@)
	@echo -e ${PRT_IMG}"----- Resize image size for real size: $@ --------"${CL_RST}
	$(hide) $(call force-save-real-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE))
	@echo -e ${PRT_IMG}"----- Made recovery image: $@ --------"${CL_RST}
