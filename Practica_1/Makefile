PDF_DIR := PDFs
TEX_FILES := Formato_Opcion_2/p.tex Formato_Opcion_3/main.tex Practica-1/Practica1.tex
PDF_FILES := $(TEX_FILES:.tex=.pdf)

all: create_dir compile_tex move_files rename_files

create_dir:
	@mkdir -p $(PDF_DIR)

compile_tex:
	@for file in $(TEX_FILES); do \
	    if [ -f "$$file" ]; then \
	        dir=$$(dirname "$$file"); \
	        filename=$$(basename "$$file" .tex); \
	        (cd "$$dir" && pdflatex -interaction=nonstopmode -halt-on-error "$$filename.tex" >/dev/null); \
	    else \
	        echo "Archivo $$file no encontrado"; \
	    fi \
	done

move_files:
	@mkdir -p $(PDF_DIR)
	@for file in $(PDF_FILES); do \
	    if [ -f "$$file" ]; then \
	        cp "$$file" "$(PDF_DIR)/"; \
	    else \
	        echo "No se encontró $$file"; \
	    fi \
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

