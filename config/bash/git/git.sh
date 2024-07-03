function git-ss(){
	find -name ".git" -execdir sh -c "if [ \$(git status -s | wc -l) -ne 0 ]; then pwd; git status -s; fi" \;
}

function git-diff(){
	find -name ".git" -execdir sh -c "if [ \$(git status -s | wc -l) -ne 0 ]; then pwd; git diff; fi" \;
}

function git-add(){
	find -name ".git" -execdir sh -c "if [ \$(git status -s | wc -l) -ne 0 ]; then pwd; git add .; fi" \;
}
