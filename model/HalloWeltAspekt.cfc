/**
 * @hint aop aspekt
 **/
component implements="wirebox.system.aop.MethodInterceptor"
{
  /**
   * @hint Konstruktor
   **/
  public component function init()
  {
    return this;
  }
 
  /**
   * @hint invokeMethod
   * @invocation Der Aufruf, in den eingegriffen wird
   **/
  function invokeMethod( required any invocation ) output="false"
  {
    // start, verarbeitung VOR der invocation
 
    // Parameter vom invocation
    var origArgs = arguments.invocation.getArgs();
    // bisschen Spielerei...
    if (StructKeyExists(origArgs, "welt")) {
      // leeren Parameter abfangen
      if (origArgs["welt"] eq "")
      {
        // return ohne die invocation Methode auszuführen
        return "Ein leeres Hallo?? Ehrlich jetzt ....";
      } else if (origArgs["welt"] eq "Weld")
      {
        // der Parameter von invocation wird manipuliert
        arguments.invocation.setArgs({welt = "Welt"});
      }
    }
    // ende, verarbeitung VOR der invocation
    // invocation wird ausgeführt und das ergebnis gespeichert
    var origReturn = arguments.invocation.proceed();
    // start, verarbeitung nach der invocation
    var response = "Bereite Ausgabe vor...<br/>"
            & origReturn
            & "<br/>aufräumarbeiten...<br/>";
    // ende, verarbeitung nach der invocation
    return response;
  }
}
