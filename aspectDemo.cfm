<cfscript>
  // create wirebox object
  wirebox = new wirebox.system.ioc.Injector("Config");

  aufrufe = [
    {"hallo" = "Hallo", "welt" = "Welt"},
    {"hallo" = "Hallo", "welt" = "Weld"},
    {"hallo" = "Hello", "welt" = "World"},
    {"hallo" = "Hello", "welt" = ""}];
 
  for (aufruf in aufrufe) {
    writeoutput("Ausgabe für '#aufruf["hallo"]#' und '#aufruf["welt"]#:'<br>");
    writeoutput(application.wirebox.getInstance(name="HalloWelt", initArguments={hallo = aufruf["hallo"]}).sageHalloWelt(welt = aufruf["welt"]));
    writeoutput("<hr>");
  }
</cfscript>
