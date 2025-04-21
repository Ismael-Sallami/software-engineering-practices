PDF_DIR := PDFs
FILES := $(shell find . -type f \( -name "p.pdf" -o -name "main.pdf" -o -name "Practica1.pdf" \))

all: create_dir move_files rename_files

create_dir:
	@mkdir -p $(PDF_DIR)

move_files: $(FILES)
	@for file in $(FILES); do \
	    cp "$$file" "$(PDF_DIR)/"; \
	done

rename_files:
	@cd $(PDF_DIR) && for file in p.pdf main.pdf Practica1.pdf; do \
	    case "$$file" in \
	        p.pdf) new_name="Practica1_Formato2.pdf" ;; \
	        main.pdf) new_name="Practica1_Formato3.pdf" ;; \
	        Practica1.pdf) new_name="Practica1_Formato1.pdf" ;; \
	    esac; \
	    [ -f "$$file" ] && mv "$$file" "$$new_name"; \
	done
