* [Bevezetés és motiváció](#bevezetés-és-motiváció)
* [A program használata](#a-program-használata)
* [Megjegyzések](#megjegyzések)
* [Verziótörténet](#verziótörténet)

# Bevezetés és motiváció

Az orvosi diagnosztika fontos eszközét a különféle tesztek jelentik. Itt most azokról a diagnosztikai eljárásokról lesz szó, melyek célja egy betegség fennállásának a megállapítása (tehát pl. nem az állapot súlyosságának a felmérése). Az egyszerűség kedvéért arra az esetre szorítkozunk, amikor egyetlen tesztről beszélünk (nem több teszt együttes eredménye alapján állapítja meg az orvos a diagnózist), és amikor a tesztnek csak két kimenete lehet, "beteg" vagy "egészséges" (nem lehet tehát kicsit vagy nagyon beteg az alany, és nem lehet kis vagy nagy valószínűséggel beteg, a döntés bináris). Ettől eltekintve a kérdést a legáltalánosabban értjük, tehát a "teszt" jelentheti akár egy tünet jelenlétét vagy egy panasz fennállását is.

A fent leírt helyzetben a tesztnek kétféle hibája lehet: ha egy egészséges emberre azt mondja, hogy beteg, illetve ha egy betegre azt mondja, hogy egészséges. A kétféle hibázást az orvosi gyakorlatban két mutatóval szokták mérni:

* a teszt *szenzitivitása* az, hogy egy beteg embert mekkora valószínűséggel minősít tényleg betegnek (azt méri, hogy mennyire veszi észre a betegséget, más szóval, hogy mennyire biztos, hogy egy egészségesnek minősített ember tényleg egészséges -- hiszen, ha a teszt nem szenzitív, akkor sok beteget is egészségesnek mond),
* a teszt *specificitása* pedig az, hogy egy egészségest mekkora valószínűséggel minősít tényleg egészségesnek (azaz mennyire biztos, hogy a betegnek minősített tényleg beteg -- hiszen, ha egy teszt nem specifikus, akkor sok egészségest is betegnek minősít).

Egy rendkívül fontos gondolat, amit nagyon sokszor elfelejtenek, hogy ez a kettő mutató nem mond semmit arról, ami klinikailag fontos! Ezek feltételes valószínűségek, amik azt mondják, hogy feltéve, hogy betegek vagyunk, mi egy adott teszteredmény valószínűsége. Ez persze fontos dolog, hiszen ez jellemzi, hogy a teszt mennyire működik jól, de a konkrét orvosi döntési helyzetben nem ez érdekes, hanem a fordított valószínűség: nem az érdekel minket, hogy ha az alany egészséges, akkor mekkora valószínűséggel negatív a teszt, hanem az, hogy ha negatív a teszt akkor mekkora valószínűséggel egészséges az alany! És hasonlóképp, nem az érdekes, hogy ha beteg, akkor mekkora valószínűséggel pozitív a teszt, hanem, hogy ha pozitív a teszt, akkor mekkora valószínűséggel beteg az alany. Ezek fontosak számunkra, ezek neve: *prediktív érték*, az előbbi a negatív, az utóbbi a pozitív prediktív érték.

A dolog kiszámítása könnyen demonstrálható egy egyszerű számpéldán. Fontos is ezt látni, mert az eredmény meglepő lehet! Mondjuk, hogy a tesztünk szenzitivitása 90%, specificitása 99%. Tegyük fel továbbá, hogy a tesztelt alanyok körében minden ezredik beteg ténylegesen. Hogy kerekek legyenek a számok, vegyünk 100 ezer alanyt, akiket mind tesztelünk; ekkor közöttük 100 beteg és 99900 egészséges lesz. Az előbbiek közül a teszt 90-et fog betegnek és 10-et egészségesnek minősíteni (szenzitivitás), az utóbbiak közül 999-et betegnak és 98901-et egészségesnek (specificitás). Ezek alapján már megválaszolhatjuk a számunkra fontos kérdéseket. Mekkora a valószínűsége, hogy egy pozitív lelet azt jelenti, hogy tényleg betegek vagyunk? Annyi, amennyi a betegek aránya a pozitívnak minősítetteken belül! Számoljunk: a teszt pozitívnak minősít összesen 90+999=1089 alanyt (90-et helyesen, 999-et helytelenül), így a ténylegesen betegek aránya a betegnek minősítetteken belül: 90/1089=8,3%. Ez a teszt pozitív prediktív értéke ebben az esetben; hasonlóan kiszámolható lenne a negatív prediktív érték is.

Azaz: noha a tesztünk igen kitűnő (90% szenzitivitás, 99% specificitás!), mégis, egy pozitív lelet kevesebb mint 10% valószínűséggel jelent ténylegesen betegséget! Ezen sok ember elcsodálkozik; a magyarázat egész egyszerűen az, hogy hajlamosak vagyunk elfelejteni azt, hogy mennyi a betegek aránya a tesztelt alanyokon belül. Ha ez alacsony, mint a fenti példában is, akkor hiába nagyon jó a teszt, a sokkal-sokkal több egészséges 1%-a még mindig több (téves) pozitív leletet fog adni, mint a kevés beteg 90%-a (helyesen). 

Az egész fenti történet két köntösben is előadható. Vagy azt mondjuk, hogy tömegeket tesztelünk (népegészségügyi szűrés), ez esetben a teszt előtti valószínűség egész egyszerűen a betegség prevalenciája, tehát az, hogy az alanyok mekkora hányada beteg, vagy azt, hogy egyetlen embert tesztelünk, ez esetben a teszt előtti valószínűség az ő egyéni jellemzőiből, ismert adataiból fakadó valószínűsége a betegség fennállásának. A kettőt néha megkülönböztetve szokták tárgyalni, noha lényegében ugyanarról van szó.

Az, hogy még kitűnő teszttel is alacsony lehet a pozitív prediktív érték, komolyan megfontolandó tényező ritka betegségek szűrésekor, de az előbbi megjegyzés mutatja, hogy pontosan ugyanez a helyzet akkor, ha egyetlen alanyt tesztelünk, de nála nagyon alacsony a betegség fennállásának a valószínűsége. (Szokták mondani, hogy "sebaj, az még mindig jobb, ha tévesen betegnek minősítjük, később úgyis kiderül, hogy nem az, de ha elnézzük a betegséget, abból nagy baj lehet". Ez sajnos nem ilyen egyszerű, hiszen a téves betegnek minősítés, anyagi és pszichológiai terhein túl, nagyon gyakran további, esetleg invazívabb vizsgálatokat von maga után, kezelés megkezdését egyáltalán nem mellékhatásmentes módszerekkel stb.) Természetesen a dolog fordítva is igaz: ha nagyon magas a teszt előtti valószínűség, akkor még egy negatív lelet is jelentheti azt, hogy további is igen valószínűen beteg az alany. Ezeket a szempontokat figyelembe kell venni egy teszt megrendeléséről való racionális döntés során (azon túl, természetesen, hogy az adott helyzetben mekkora súlya van a kétféle tévedésnek, ez persze orvosi kérdés, ami a helyzettől függ).

# A program használata

Láthattuk a fentiekből, hogy a prediktív értékeket három tényező határozza meg: a szenzitivitás, a specificitás és a tesztelés előtti valószínűség (pl. prevalencia). Szépen, áttekinthetően ábrázolni viszont egyszerre csak két dolgot lehet, ennek megfelelően az alkalmazás egy paraméter értékét bekéri (`Beállítandó változó`), és azt fixnek veszi. E paraméter értéke csúszkával, és az alatta lévő mezőbe a szám közvetlen beírásával egyaránt megadható (bármelyik kitöltése automatikusan frissíti a másikat). A két megjelenő ábra -- pozitív és negatív prediktív érték -- a másik két paraméter összes lehetséges kombinációjának fényében mutatja a megfelelő prediktív értékeket. Az ábra le is tölthető, PDF és PNG formátumban is.

Az alkalmazásnak két füle van, a `Grafikon` az alapértelmezett, ekkor a fent leírt ábrák jelennek meg, de a `Számszerű adatok` fülre átkattintva megjelennek egy pont adatai számszerűen is (a pont a `Speciális beállítások` mezőt bepipálva válik beállíthatóvá, lásd következő részt).

A `Speciális beállítások` mezőt bepipálva további beállítások válnak elérhetővé:

* Megadhatóak, hogy az ábrán mik legyenek a tengelyek határai.
* Megfordíthatóak a két tengely.
* Logaritmikus beosztásúvá tehető mindkét tengely.
* Lekérdezhető egy konkrét pont: bepipálva ezt a mezőt beállíthatóvá válik a pont helye, ez egyfelől megjelenik az ábrán, másfelől a korábban említett `Számszerű adatok` fülön megjelennek az ahhoz tartozó értékek.

# Megjegyzések

* Noha igyekeztem a lehető legalaposabban eljárni, a programhoz természetesen nincs garancia. Különösen most, hogy még a kezdeti fázisban van; pontosan emiatt viszont hálásan megköszönök minden tesztelést (kiemelten: ugyanazon számítások, vizualizációk más módon történő elvégzését, és ezek eredményének összevetését az én programom által szolgáltatottakkal).
* Az előbbi cél érdekében a teljes munkám transzparens: ebben a GitHub repozitóriumban nyilvánosan elérhető tettem a teljes programot, [R szkript](app.R) formájában.
* A hibaellenőrzésektől teljesen függetlenül is nagy örömmel veszek minden visszajelzést, javítási/bővítési/továbbfejlesztési ötletet!
* Az alkalmazás `R` statisztikai környezet alatt `shiny` használatával készült, a vizualizációhoz `lattice` csomagot használtam.


# Verziótörténet

Verzió|Dátum|Kommentár
------|-----|---------
v1.00|2019-05-07|Kiinduló változat.