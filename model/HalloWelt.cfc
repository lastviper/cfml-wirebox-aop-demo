/**
 * @hint Einfache Hallo Welt Klasse
 **/
component
{
  // Member Variable
	variables["hallo"] = "hallo";
 
	/**
	 * @hint Konstruktor
	 * @hallo Parameter Präfix
	 * @return this
	 **/
	public component function init( required string hallo )
	{
		variables["hallo"] = arguments["hallo"];
 
		return this;
	}
 
	/**
	 * @hint Funktion die Präfix und Suffix als String ausgibt
	 * @welt Parameter Suffix
	 * @return der String zu Hallo Welt
	 **/
	public string function sageHalloWelt( string welt = "welt")
	{
		var output = "#variables["hallo"]# #arguments["welt"]#";
		return output;
	}
}
