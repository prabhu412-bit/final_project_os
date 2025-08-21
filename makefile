# File: Makefile
# This Makefile generates README.md automatically.

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time of Run" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	wc -l < guessinggame.sh >> README.md
	echo "" >> README.md
	echo "## GitHub Repository" >> README.md
	echo "Repository URL: https://github.com/YOUR-USERNAME/YOUR-REPO" >> README.md
	echo "GitHub Pages URL: https://YOUR-USERNAME.github.io/YOUR-REPO" >> README.md
