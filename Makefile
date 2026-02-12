YEAR := $(shell date +%Y)

define COPYRIGHT
/*
 * Copyright (c) $(YEAR), lapic-ufjf
 * Licensed under The MIT License [see LICENSE for details]
 */
endef
export COPYRIGHT

FILES := $(shell find . -type f \( -name "*.ts" -o -name "*.js" \) \
	! -path "./node_modules/*" \
	! -path "./dist/*" \
	! -path "./build/*")

add-copyright:
	@for file in $(FILES); do \
		if ! grep -q "Copyright (c)" "$$file"; then \
			echo "Updating $$file"; \
			{ \
				printf "%s\n\n" "$$COPYRIGHT"; \
				cat "$$file"; \
			} > "$$file.tmp" && mv "$$file.tmp" "$$file"; \
		fi; \
	done
