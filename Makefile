# .SECONDARY: Prevents the automatic deletion of files created
#   by this makefile.
.SECONDARY:

.PHONY: resume.m4.tex

# Takes LaTeX code generated by using m4 on resume.m4.tex and
#   copies it to be pasted into Overleaf.
resume.m4.tex:
	@gm4 $@ | pbcopy && open "https://www.overleaf.com/project/65b01479608e5de20e6888d8"

# Default value of the course name variable.
c = unnamed

# Default value for Q_COUNT in m4.
q = 1

# Copies LaTeX code to be pasted into Overleaf. Use the command
#   "make hw5 c=cs589" to combine ../coursework/cs589/hw5.m4.tex
#   and homework.m4.tex using m4. If the hw5 file doesn't exist
#   yet, use "make hw5 c=cs589 q=4" to create LaTeX code with a
#   template for answering four homework questions. Overleaf is
#   opened so that the output of m4 can be edited online.
%: ../coursework/$(c)/%.m4.tex
	@gm4 -D HW_NAME=$(c)/$@ -D Q_COUNT=$(q) homework.m4.tex | pbcopy && open "https://www.overleaf.com/project/65ac65ece97855f2c52b4225"

# Creates a file in the coursework repository that, when
#   processed by m4, will be an template for answering homework
#   questions. This file is opened so it can be updated after
#   editing is done in Overleaf.
../coursework/%.m4.tex:
	@cp questions.m4.tex $@ && open $@
