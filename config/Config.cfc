/**
 * Config
 * @hint Konfiguration für Wirebox, erweitert wirebox.system.ioc.config.Binder
 * @author Fabian Tietz
 * @date 04.01.19
 **/
component extends="wirebox.system.ioc.config.Binder" {
  /**
   * @hint Konstructor für die Konfiguration
   **/
  void function configure() {
    // CFCs automatisch einbinden
    // alternativen:
    // map("MeineKomponente").to("cfc.model.MeineKomponente");
    // mapDirectory("cfc.model");
    wireBox = { "scanLocations" = ["cfc"] };
    
    // aktiviert AOP, wenn wirebox eine objekt erzeugt,
    // werden aop mit den methoden der Komponente gebunden
    wirebox["listeners"] = [ { "class"="wirebox.system.aop.Mixer", "properties"={} } ];
  }
 
  // aop aspekte an Komponenten / Methoden binden
  // aspekt können als Mapping DSL konfiguriert werden
  bindAspect(classes=match().any(  ),
             methods=match().regex( '^sage' ),
             aspects="HalloWeltAspect" );
}
