* [Bevezetés és motiváció](#bevezetés-és-motiváció)
* [A program használata](#a-program-használata)
* [Megjegyzések](#megjegyzések)
* [Verziótörténet](#verziótörténet)
* [Kiegészítő gondolatok az orvosi döntéshozatal, diagnosztika kapcsán](#kiegészítő-gondolatok-az-orvosi-döntéshozatal-diagnosztika-kapcsán)

# Bevezetés és motiváció

Az orvosi diagnosztika fontos eszközét a különféle tesztek jelentik. Itt most azokról a diagnosztikai eljárásokról lesz szó, melyek célja egy betegség fennállásának a megállapítása (tehát pl. nem az állapot súlyosságának a felmérése). Az egyszerűség kedvéért arra az esetre szorítkozunk, amikor egyetlen tesztről beszélünk (nem több teszt együttes eredménye alapján állapítja meg az orvos a diagnózist), és amikor a tesztnek csak két kimenete lehet, "beteg" vagy "egészséges" (nem lehet tehát kicsit vagy nagyon beteg az alany, és nem lehet kis vagy nagy valószínűséggel beteg, a döntés bináris). Ettől eltekintve a kérdést a legáltalánosabban értjük, tehát a "teszt" jelentheti akár egy tünet jelenlétét vagy egy panasz fennállását is.

A fent leírt helyzetben a tesztnek kétféle hibája lehet: ha egy egészséges emberre azt mondja, hogy beteg, illetve ha egy betegre azt mondja, hogy egészséges. A kétféle hibázást az orvosi gyakorlatban két mutatóval szokták mérni:

* a teszt *szenzitivitása* az, hogy mennyire kerüli el azt a hibát, hogy beteg embert egészségesnek minősítsen: a teszt szenzitivitása az, hogy egy beteg embert mekkora valószínűséggel minősít tényleg betegnek (azaz mennyire biztos, hogy egy egészségesnek minősített ember tényleg egészséges - hiszen, ha a teszt nem szenzitív, akkor sok beteget is egészségesnek mond),
* a teszt *specificitása* pedig az, hogy mennyire kerüli el azt a hibát, hogy egészséges embert betegnek minsőítsen: a teszt specificitása az, hogy egy egészségest mekkora valószínűséggel minősít tényleg egészségesnek (azaz mennyire biztos, hogy a betegnek minősített tényleg beteg - hiszen, ha egy teszt nem specifikus, akkor sok egészségest is betegnek minősít).

Egy rendkívül fontos gondolat, amit nagyon sokszor elfelejtenek, hogy ez a kettő mutató nem mond semmit arról, ami klinikailag fontos! A konkrét orvosi döntési helyzetben ugyanis nem ezek érdekesek, hanem a fordítottjaik: nem az érdekel minket, hogy ha az alany egészséges, akkor mekkora valószínűséggel negatív a teszt, hanem az, hogy ha negatív a teszt akkor mekkora valószínűséggel egészséges az alany! És hasonlóképp, nem az érdekes, hogy ha beteg, akkor mekkora valószínűséggel pozitív a teszt, hanem, hogy ha pozitív a teszt, akkor mekkora valószínűséggel beteg az alany. Ezek fontosak számunkra, ezek neve: *prediktív érték*, az előbbi a negatív, az utóbbi a pozitív prediktív érték.

A dolog kiszámítása, illetve a két megközelítés közti különbség könnyen demonstrálható egy egyszerű számpéldán. Fontos is ezt látni, mert az eredmény meglepő lehet! Mondjuk, hogy a tesztünk szenzitivitása 90%, specificitása 99%. Tegyük fel továbbá, hogy a tesztelt alanyok körében minden ezredik beteg ténylegesen. Hogy kerekek legyenek a számok, vegyünk 100 ezer alanyt, akiket mind tesztelünk; ekkor közöttük 100 beteg és 99900 egészséges lesz. Az előbbiek közül a teszt 90-et fog betegnek és 10-et egészségesnek minősíteni (szenzitivitás), az utóbbiak közül 999-et betegnak és 98901-et egészségesnek (specificitás). Ezek alapján már megválaszolhatjuk a számunkra fontos kérdéseket. Mekkora a valószínűsége, hogy egy pozitív lelet azt jelenti, hogy tényleg betegek vagyunk? Annyi, amennyi a betegek aránya a pozitívnak minősítetteken belül! Számoljunk: a teszt pozitívnak minősít összesen 90+999=1089 alanyt (90-et helyesen, 999-et helytelenül), így a ténylegesen betegek aránya a betegnek minősítetteken belül: 90/1089=8,3%. Ez a teszt pozitív prediktív értéke ebben az esetben; hasonlóan kiszámolható lenne a negatív prediktív érték is.

Azaz: noha a tesztünk igen kitűnő (90% szenzitivitás, 99% specificitás!), mégis, egy pozitív lelet kevesebb mint 10% valószínűséggel jelent ténylegesen betegséget! Ezen sok ember elcsodálkozik; a magyarázat egész egyszerűen az, hogy hajlamosak vagyunk elfelejteni azt, hogy mennyi a betegek aránya a tesztelt alanyokon belül. Ha ez alacsony, mint a fenti példában is, akkor hiába nagyon jó a teszt, a sokkal-sokkal több egészséges 1%-a még mindig több (téves) pozitív leletet fog adni, mint a kevés beteg 90%-a (helyesen). 

Az egész fenti történet két köntösben is előadható. Vagy azt mondjuk, hogy tömegeket tesztelünk (népegészségügyi szűrés), ez esetben a teszt előtti valószínűség egész egyszerűen a betegség prevalenciája, tehát az, hogy az alanyok mekkora hányada beteg, vagy azt, hogy egyetlen embert tesztelünk, ez esetben a teszt előtti valószínűség az ő egyéni jellemzőiből, ismert adataiból fakadó valószínűsége a betegség fennállásának. A kettőt néha megkülönböztetve szokták tárgyalni, noha lényegében ugyanarról van szó.

Az, hogy még kitűnő teszttel is alacsony lehet a pozitív prediktív érték, komolyan megfontolandó tényező ritka betegségek szűrésekor, de az előbbi megjegyzés mutatja, hogy pontosan ugyanez a helyzet akkor, ha egyetlen alanyt tesztelünk, de nála nagyon alacsony a betegség fennállásának a valószínűsége.

Szokták mondani, hogy "sebaj, az még mindig jobb, ha tévesen betegnek minősítjük, később úgyis kiderül, hogy nem az, de ha elnézzük a betegséget, abból nagy baj lehet". Ez sajnos nem ilyen egyszerű, hiszen a téves betegnek minősítés, anyagi és pszichológiai terhein túl, nagyon gyakran további, esetleg invazívabb vizsgálatokat von maga után, kezelés megkezdését egyáltalán nem mellékhatásmentes módszerekkel stb.

Természetesen a dolog fordítva is igaz: ha nagyon magas a teszt előtti valószínűség, akkor még egy negatív lelet is jelentheti azt, hogy további is igen valószínűen beteg az alany. Ezeket a szempontokat figyelembe kell venni egy teszt megrendeléséről való racionális döntés során (azon túl, természetesen, hogy az adott helyzetben mekkora súlya van a kétféle tévedésnek, ez persze orvosi kérdés, ami a helyzettől függ).

# A program használata

Láthattuk a fentiekből, hogy a prediktív értékeket három tényező határozza meg: a szenzitivitás, a specificitás és a tesztelés előtti valószínűség (pl. prevalencia). Szépen, áttekinthetően ábrázolni viszont egyszerre csak két dolgot lehet, ennek megfelelően az alkalmazás egy paraméter értékét bekéri (`Beállítandó változó`), és azt fixnek veszi. E paraméter értéke csúszkával, és az alatta lévő mezőbe a szám közvetlen beírásával egyaránt megadható (bármelyik kitöltése automatikusan frissíti a másikat). A két megjelenő ábra - pozitív és negatív prediktív érték - a másik két paraméter összes lehetséges kombinációjának fényében mutatja a megfelelő prediktív értékeket. Az ábra le is tölthető, PDF és PNG formátumban is.

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

# Kiegészítő gondolatok az orvosi döntéshozatal, diagnosztika kapcsán

Az orvosi diagnosztika és döntéshozatal talán a legjobb példa olyan területre, ahol a *valószínűségi gondolkodás* rettenetesen fontos az orvoslásban. Hozzá szokták tenni, hogy "és ebben az orvosok nem jók". Azt gondolom, hogy valójában az orvosok *implicite* igenis is sokszor jók ebben, de tény, hogy a mélyebb megértéshez explite is jó látni ezeket a kérdéseket - ehhez pedig muszáj rendelkezni megfelelő ismeretekkel; nem is feltétlenül bonyolult valószínűségszámítási képletekre kell gondolni, hanem bizonyos koncepciókat át kell látni. Ehhez igyekszik segítséget adni ez a pont.

## A valószínűség és a feltételes valószínűség

Két alapfogalmat kell megérteni, az egyik természetesen a *valószínűség*. Könyeket írtak a valószínűség matematikájáról, és arról is, hogy mint fogalom hogyan értelmezhető, nekünk most egyikre sem lesz szükségünk, a legegyszerűbb, nem matematikai definíció is megfelel.

Valószínűsége egy eseménynek van, ahol az "esemény" szót a legáltalánosabban értjük: esemény az, hogy az alanyunk beteg, hogy a tesztje pozitív, hogy férfi stb., a valószínűség pedig az, amit az *arány* közelít, ha egy mintában számolnánk a kérdéses események előfordulásának a számát. Tehát, a "20% valószínűséggel beteg" azt jelenti, hogy nagyon sok ilyen embert megvizsgálva nagyjából minden ötödik lenne beteg (minél többet vizsgálunk meg, annál pontosabban minden ötödik). Meglepő lehet, hogy a férfi is fel volt sorolva a listán, hiszen néhányan arra gondolhatnak, hogy "de hát azt tudjuk, hogy férfi-e az alany, aki itt ül a rendelőnkben". Természetesen a kérdésfeltevéshez, tehát, hogy mekkora valószínűséggel férfi, az a szituáció, hogy nem ül előttünk - például gondolhatunk arra, hogy még az ajtó előtt áll. Ekkor az 50% valószínűség azt jelenti, hogy sok ilyen eset után nagyjából minden második alkalommal lépett be férfi. Ezzel együtt nem volt felesleges ez a rövid kitérő, mert rámutat arra, hogy bizonyos dolgokat *megfigyelhetünk*, azaz biztosan tudjuk, hogy bekövetkezett-e vagy sem.

Összességében véve tehát a valószínűség elég jól megfelel a szó hétköznapi felfogásának.

Ennél izgalmasabb a *feltételes valószínűség* fogalma. Pontos matematikai definíciót mellőzve: egy esemény feltételes valószínűsége feltéve egy másik eseményt azt jelenti, hogy leszűkítjük a világunkat arra, hogy a feltétel bekövetkezett, és azt kérdezzük, hogy ezen szűkített világon *belül* mekkora az eseménynek a valószínűsége. A feltételes valószínűség tehát egy szokásos valószínűség, csak egy leszűkített világon belül meghatározva. Ha azt kérdezzük, hogy mekkora annak a valószínűsége, hogy az alany beteg *feltéve*, hogy férfi, akkor megvárjuk, hogy bejöjjön az ajtón, és csak a férfiak körében nézzük a betegek arányát (tehát a férfi betegek számát osztjuk a férfi alanyok számával). Ez a feltételes valószínűség akármilyen viszonyban lehet a feltétel nélküli valószínűséggel: nagyon eltérhet tőle, például ha az esemény az, hogy az alanynak méhnyakrákja van, de lehet teljesen ugyanaz is, például ha az az esemény, hogy az alany szemszíne barna. (Ez utóbbi esetben szokás azt mondani, hogy a két esemény *független* egymástól.)

A feltételes valószínűség tipikus alkalmazása során a feltétel valami olyasmi, amiről tudjuk, hogy bekövetkezett, tudjuk, hogy igaz, ilyen módon a feltételes valószínűséget lényegében arra használjuk, hogy *beépítsük* a megismert információk hatását, azok segítségével frissítsük a valószínűséget, megmondjuk, hogy *ha* ezt meg ezt ismerjük *akkor* mennyi a valószínűség.

## Problémák a szenzitivitással és specificitással (és jónéhány társukkal)

A szenzitivitás és a specificitás egyaránt feltételes valószínűség: *feltéve* hogy az alanyunk beteg, mekkora valószínűséggel pozitív a teszt; *feltéve*, hogy az alanyunk egészséges, mekkora valószínűséggel negatív. A korábban látott magyarázat talán értelmessé teszi ezeket a mutatókat, de ha jobban meggondoljuk, akkor valójában ezek nagyon is furcsák: arra feltételeznek, amit *nem tudunk*, és annak a valószínűségét kérdezzük meg, amit meg pontosan *tudunk*, kérdezés nélkül is...! Mintha reggel 8 előtt kilépve az ajtón, nem azt kérdeznénk, hogy feltéve, hogy 8 előtt elindultam, mekkora valószínűséggel fogom elérni a buszt, hanem azt, hogy ha elérem a buszt, akkor mekkora valószínűséggel indultam el 8 előtt...

A probléma tehát a szenzitivitással és a specificitással, hogy *megfordítják az információáramlás irányát*, pont fordítva feltételeznek, mint ami értelmes lenne: arra feltételeznek, amit *nem* ismerünk, szemben azzal, amit az előző pontban kifejtettünk. Minket nem az érdekel, hogy feltéve, hogy az alany beteg, mekkora valószínűséggel pozitív a tesztje, hanem az, hogy feltéve, hogy pozitív a tesztje, mekkora valószínűséggel beteg! Ez felel meg a tényleges információáramlásnak.

Az igazság egyébként az, hogy ez egyáltalán nem példátlan eset az orvoslásban. Egy másik példa, csakhogy jobban illusztrálja ezt a pontot: "ez a kór jobban sújtja a férfiakat: a betegek kétharmada férfi". (Rengeteg ilyen jellegű megállapítás olvasható, nemcsak a laikus, az orvosi irodalomban is.) Ugye milyen logikus? Nem, egyáltalán nem az! Gondoljuk meg: ez a kijelentés egy feltételes valószínűség: *feltéve*, hogy az alany beteg, mekkora valószínűséggel férfi. Ennek meg mi értelme? Ott áll az orrom előtt az alany, és azt kérdezem, hogy *feltéve*, hogy beteg, mekkora a valószínűsége, hogy férfi?! Miközben ott áll Béla előttem? Természetesen semmi értelme ennek, a releváns kérdés a fordítottja: feltéve, hogy az alany férfi, mekkora valószínűséggel beteg! (Pl. nemspecifikus prevalencia.) Hogy miért használható mégis a fenti számítás? Egész egyszerűen azért, mert a férfiak-nők aránya nagyjából fele-fele a lakosságban. *Hajszálpontosan* ugyanazzal a fent bemutatott számítással lehetne megmutatni, hogy a fenti kijelentés egyáltalán nem feltétlenül jelenti azt, hogy a férfiak kockázata nagyobb, sőt, akár még kisebb is lehet - ha a férfiak aránya több mint kétharmad lenne (gondoljuk végig!). De mivel közelítőleg azonosak az arányok, így szerencsére működik a fenti logika is. Ha valaki ezt nem hinné el, az gondolja meg, hogy a következő kijelentést is ugyanúgy elfogadná-e: "ez a kór jobban sújtja az 1 évnél idősebbeket: a betegek kétharmada 1 évnél idősebb". De ettől még nem válik helyessé ez a logika.

Látható tehát, hogy a pozitív és negatív prediktív érték azért fontos, mert *ezek* adják meg a választ, a klinikailag releváns kérdésre, ezeknél felel meg a valóságnak az információáramlás iránya.