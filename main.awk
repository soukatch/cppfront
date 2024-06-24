BEGIN {
	results_dir = "regression-tests/test-results/"
	system(sprintf("build/cppfront -p %s.cpp2 > %s/%s.cpp2.output", file, results_dir, file))
	system(sprintf("touch %s/%s.out", results_dir, file))
	system(sprintf("cp %s.cpp2 regression-tests", file))
	system(sprintf("cp %s.cpp %s", file, results_dir))
}

{
	system("cp execution " results_dir $1 "/" file ".cpp.execution")
	system("cp output " results_dir $1 "/" file ".cpp.output")
}
