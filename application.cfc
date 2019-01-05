component {
	// app name
	this.Name = "cfml_wirebox_aop_demo";
	// create mapping
	this.mapping = {};
	this.mapping["/root"] = getDirectoryFromPath(getCurrentTemplatePath());
	this.mapping["/wirebox"] = getDirectoryFromPath(getCurrentTemplatePath()) & "wirebox\";
}
