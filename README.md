* [Bevezetés és motiváció](#bevezetés-és-motiváció)
* [A program használata](#a-program-használata)
* [Megjegyzések](#megjegyzések)
* [Verziótörténet](#verziótörténet)
* [Kiegészítő gondolatok az orvosi döntéshozatal, diagnosztika kapcsán](#kiegészítő-gondolatok-az-orvosi-döntéshozatal-diagnosztika-kapcsán)

# Bevezetés és motiváció

Az orvosi diagnosztika fontos eszközét a különféle tesztek jelentik. Itt most azokról a diagnosztikai eljárásokról lesz szó, melyek célja egy betegség fennállásának a megállapítása (tehát pl. nem az állapot súlyosságának a felmérése). Az egyszerűség kedvéért arra az esetre szorítkozunk, amikor egyetlen tesztről beszélünk (nem több teszt együttes eredménye alapján állapítja meg az orvos a diagnózist), és amikor a tesztnek csak két kimenete lehet, "beteg" vagy "egészséges" (nem lehet tehát kicsit vagy nagyon beteg az alany, és nem lehet kis vagy nagy valószínűséggel beteg, a döntés bináris). A [kiegészítő gondolatok...](#kiegészítő-gondolatok-az-orvosi-döntéshozatal-diagnosztika-kapcsán) pontban feloldjuk ezeket a megkötéseket. Ettől eltekintve a kérdést a legáltalánosabban értjük, tehát a "teszt" jelentheti akár egy tünet jelenlétét vagy egy panasz fennállását is.

A fent leírt helyzetben a tesztnek kétféle hibája lehet: ha egy egészséges emberre azt mondja, hogy beteg, illetve ha egy betegre azt mondja, hogy egészséges. A kétféle hibázást az orvosi gyakorlatban két mutatóval szokták mérni, mindkettő egy feltételes valószínűség:

* A teszt **szenzitivitása** az, hogy feltéve, hogy az alany beteg, mekkora valószínűséggel lesz a tesztünk pozitív. Ez magyarra lefordítva azt jelenti, hogy mennyire találja meg a teszt a betegeket: egy nagyon szenzitív teszt pozitív lesz szinte minden betegnél (de simán lehet, hogy pozitív lesz egy sor egészségesnél is!). Azaz: a szenzitivitás azt méri, hogy mennyire kerüljük el azt a hibát, hogy egy beteget tévesen egészségesnek minősítünk.
* A teszt **specificitás** az, hogy feltéve, hogy az alany egészséges, mekkora valószínűséggel lesz a teszt negatív. Ez magyarra lefordítva azt jelenti, hogy mennyire találja meg a teszt az egészségeseket: egy nagyon specifikus teszt negatív lesz szinte minden egészségesnél (de simán lehet, hogy negatív lesz egy sor betegnél is!). Azaz: a specificitás azt méri, hogy mennyire kerüljük el azt a hibát, hogy egy egészségeset tévesen betegnek minősítünk.

Egy rendkívül fontos gondolat, amit nagyon sokszor elfelejtenek, hogy ez a kettő mutató nem mond *semmit* arról, ami klinikailag fontos! Mert mi is történik itt? Gondoljuk meg jobban: feltéve, hogy beteg az alany, mekkora valószínűséggel pozitív a teszt... azaz feltételezünk valamire, amit *nem tudunk*, és megkérdezzük a valószínűségét valaminek, amit *tudunk*? Talán pont fordítva lenne értelme a dolognak...! A konkrét orvosi döntési helyzetben tehát nem ezek a valószínűségek az érdekesek, hanem a fordítottjaik: nem az érdekel minket, hogy ha az alany egészséges, akkor mekkora valószínűséggel negatív a teszt, hanem az, hogy ha negatív a teszt akkor mekkora valószínűséggel egészséges az alany! És hasonlóképp, nem az érdekes, hogy ha beteg, akkor mekkora valószínűséggel pozitív a teszt, hanem, hogy ha pozitív a teszt, akkor mekkora valószínűséggel beteg az alany. *Ezek* fontosak számunkra, ezek neve: **prediktív érték**, az előbbi a negatív, az utóbbi a pozitív prediktív érték.

(Sajnos az orvoslásban ez nem ritka probléma. Kedvenc példáimat azok a táblázatok jelentik, ahol megadják, hogy a betegek mekkora hányada (például) férfi. Miközben ez teljesen természetesnek hat, gondoljuk jobban végig: ez az adat azt jelenti, hogy feltéve, hogy valaki beteg, mekkora valószínűséggel férfi – ott áll előttem Béla, és azt kérdezem, hogy feltéve, hogy beteg, mekkora valószínűséggel férfi?! Ennek meg mi értelme? Talán inkább a fordítottja kellene, hogy a férfiak mekkora hányada beteg!)

A dolog kiszámítása, illetve a két megközelítés közti különbség könnyen demonstrálható egy egyszerű számpéldán. Fontos is ezt látni, mert az eredmény meglepő lehet! Mondjuk, hogy a tesztünk szenzitivitása 90%, specificitása 99%. Tegyük fel továbbá, hogy a tesztelt alanyok körében minden ezredik beteg ténylegesen. Hogy kerekek legyenek a számok, vegyünk 100 ezer alanyt, akiket mind tesztelünk; ekkor közöttük 100 beteg és 99900 egészséges lesz. Az előbbiek közül a teszt 90-et fog betegnek és 10-et egészségesnek minősíteni (szenzitivitás), az utóbbiak közül 999-et betegnak és 98901-et egészségesnek (specificitás). Ezek alapján már megválaszolhatjuk a számunkra fontos kérdéseket. Mekkora a valószínűsége, hogy egy pozitív lelet azt jelenti, hogy tényleg betegek vagyunk? Annyi, amennyi a betegek aránya a pozitívnak minősítetteken belül! Számoljunk: a teszt pozitívnak minősít összesen 90+999=1089 alanyt (90-et helyesen, 999-et helytelenül), így a ténylegesen betegek aránya a betegnek minősítetteken belül: 90/1089=8,3%. Ez a teszt pozitív prediktív értéke ebben az esetben; hasonlóan kiszámolható lenne a negatív prediktív érték is.

Azaz: noha a tesztünk igen kitűnő (90% szenzitivitás, 99% specificitás!), mégis, egy pozitív lelet kevesebb mint 10% valószínűséggel jelent ténylegesen betegséget! Ezen sok ember elcsodálkozik; a magyarázat egész egyszerűen az, hogy hajlamosak vagyunk elfelejteni azt, hogy mennyi a betegek aránya a tesztelt alanyokon belül. Ha ez alacsony, mint a fenti példában is, akkor hiába nagyon jó a teszt, a sokkal-sokkal több egészséges 1%-a még mindig több (téves) pozitív leletet fog adni, mint a kevés beteg 90%-a (helyesen). 

Az egész fenti történet két köntösben is előadható. Vagy azt mondjuk, hogy tömegeket tesztelünk (népegészségügyi szűrés), ez esetben a teszt előtti valószínűség egész egyszerűen a betegség prevalenciája, tehát az, hogy az alanyok mekkora hányada beteg, vagy azt, hogy egyetlen embert tesztelünk, ez esetben a teszt előtti valószínűség az ő egyéni jellemzőiből, ismert adataiból fakadó valószínűsége a betegség fennállásának. A kettőt néha megkülönböztetve szokták tárgyalni, noha lényegében ugyanarról van szó.

Az, hogy még kitűnő teszttel is alacsony lehet a pozitív prediktív érték, komolyan megfontolandó tényező ritka betegségek szűrésekor, de az előbbi megjegyzés mutatja, hogy pontosan ugyanez a helyzet akkor, ha egyetlen alanyt tesztelünk, de nála nagyon alacsony a betegség fennállásának a valószínűsége.

Szokták mondani, hogy "sebaj, az még mindig jobb, ha tévesen betegnek minősítjük, később úgyis kiderül, hogy nem az, de ha elnézzük a betegséget, abból nagy baj lehet". Ez sajnos nem ilyen egyszerű, hiszen a téves betegnek minősítés, anyagi és pszichológiai terhein túl, nagyon gyakran további, esetleg invazívabb vizsgálatokat von maga után, kezelés megkezdését egyáltalán nem mellékhatásmentes módszerekkel stb. Természetesen a dolog fordítva is igaz: ha nagyon magas a teszt előtti valószínűség, akkor még egy negatív lelet is jelentheti azt, hogy további is igen valószínűen beteg az alany. Ezeket a szempontokat figyelembe kell venni egy teszt megrendeléséről való racionális döntés során.

Végezetül fontos hangsúlyozni, hogy az, hogy a betegség fennállásának adott valószínűsége mellett megkezdjük-e a kezelést *nem* statisztikai kérdés: azon is múlik, hogy az adott helyzetben mekkora súlya, költsége van a kétféle tévedésnek. (A "költség"" itt természetesen nem (csak) forintban mért költséget jelent: ide tartozik egy feleslegesen elvégzett további vizsgálat, vagy ellenkezőleg, egy meg nem kezdett kezelés okozta egészségkárosodás is.) Egy kicsi tesztelés utáni betegség-valószínűség is elég lehet a betegség igazolására, ha a tévesen betegnek minősítés nem nagy gond a tévesen egészségesnek minősítéshez képest, és hasonlóan, egy nagy valószínűség is alapja lehet a betegség kizárásának, ha a tévesen egészségesnek minősítés nem nagy baj a tévesen betegnek minősítéshez képest. Ezeket a felvetéseket a [kiegészítő gondolatok...](#kiegészítő-gondolatok-az-orvosi-döntéshozatal-diagnosztika-kapcsán) pontban vizsgálom tovább.

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

Az orvosi diagnosztika és döntéshozatal talán a legjobb példa olyan területre, ahol a *valószínűségi gondolkodás* rettenetesen fontos az orvoslásban. Hozzá szokták tenni, hogy "és ebben az orvosok nem jók". Azt gondolom, hogy valójában az orvosok *implicite* igenis sokszor jók ebben, de tény, hogy a mélyebb megértéshez explite is jó látni ezeket a kérdéseket - ehhez pedig muszáj rendelkezni megfelelő ismeretekkel; nem is feltétlenül bonyolult valószínűségszámítási képletekre kell gondolni, hanem bizonyos koncepciókat át kell látni. Ehhez igyekszik segítséget adni ez a pont.

## A valószínűség és a feltételes valószínűség

Két alapfogalmat kell érteni, az egyik természetesen a *valószínűség*. Könyeket írtak a valószínűség matematikájáról, és arról is, hogy mint fogalom hogyan értelmezhető, nekünk most egyikre sem lesz szükségünk, a legegyszerűbb, nem pontos és nem matematikai definíció is megfelel.

Valószínűsége egy eseménynek van, ahol az "esemény" szót a legáltalánosabban értjük: esemény az, hogy az alanyunk beteg, hogy a tesztje pozitív, hogy férfi stb., a valószínűség pedig az, amit az az *arány* közelít, hogy egy mintában megszámolva milyen gyakran fordulna elő a kérdéses esemény. Tehát, a "20% valószínűséggel beteg" azt jelenti, hogy nagyon sok ilyen embert megvizsgálva nagyjából minden ötödik lenne beteg (minél többet vizsgálunk meg, annál pontosabban minden ötödik). Meglepő lehet, hogy a férfi is fel volt sorolva a listán, hiszen néhányan arra gondolhatnak, hogy "de hát azt tudjuk, hogy férfi-e az alany, aki itt ül a rendelőnkben". Természetesen a kérdésfeltevéshez, tehát, hogy mekkora valószínűséggel férfi, az a szituáció, hogy nem ül előttünk - például gondolhatunk arra, hogy még az ajtó előtt áll. Ekkor az 50% valószínűség azt jelenti, hogy sok ilyen eset után nagyjából minden második alkalommal lépett be férfi. Ezzel együtt nem volt felesleges ez a rövid kitérő, mert rámutat arra, hogy bizonyos dolgokat *megfigyelhetünk*, azaz, miután megfigyeltük, onnan már nem valószínűségiek, hanem biztosan tudjuk, hogy bekövetkezett-e vagy sem.

Összességében véve tehát a valószínűség elég jól megfelel a szó hétköznapi felfogásának.

Ennél izgalmasabb a *feltételes valószínűség* fogalma. Pontos matematikai definíciót mellőzve: egy esemény feltételes valószínűsége feltéve egy másik eseményt azt jelenti, hogy leszűkítjük a világunkat arra, hogy a feltétel bekövetkezett, és azt kérdezzük, hogy ezen szűkített világon *belül* mekkora az eseménynek a valószínűsége. A feltételes valószínűség tehát egy szokásos valószínűség, csak egy leszűkített világon belül meghatározva. Ha azt kérdezzük, hogy mekkora annak a valószínűsége, hogy az alany beteg *feltéve*, hogy férfi, akkor megvárjuk, hogy bejöjjön az ajtón, kiderüljön a neme, és csak a férfiak körében nézzük a betegek arányát. Tehát: a férfi betegek számát (nem az összes beteg számát) osztjuk a férfi alanyok számával (nem az összes alany számával). Ez a feltételes valószínűség akármilyen viszonyban lehet a feltétel nélküli valószínűséggel: nagyon eltérhet tőle, például ha az esemény az, hogy az alanynak méhnyakrákja van, de lehet teljesen ugyanaz is, például ha az az esemény, hogy az alany szemszíne barna. (Ez utóbbi esetben szokás azt mondani, hogy a két esemény *független* egymástól.)

A feltételes valószínűség tipikus alkalmazása során a feltétel valami olyasmi, amiről tudjuk, hogy bekövetkezett, tudjuk, hogy igaz, ilyen módon a feltételes valószínűséget lényegében arra használjuk, hogy *beépítsük* a megismert információk hatását, azok segítségével frissítsük a valószínűséget, megmondjuk, hogy *ha* ezt meg ezt ismerjük *akkor* mennyi a valószínűség.

## Problémák a szenzitivitással és specificitással (és jónéhány társukkal)

A szenzitivitás és a specificitás legapalvetőbb baját már láttuk, erről szólt az iromány egész első fele: hogy figyelmen kívül hagyják a tesztelés előtti valószínűséget. (Szűrés esetén: a prevalenciát.) Éppen ezért klinikai *döntéshozatalban* egészen biztos hibás a használatuk. Érdemes azonban erre a problémára más szemmel is ránézni.

A szenzitivitás és a specificitás egyaránt feltételes valószínűség: *feltéve* hogy az alanyunk beteg, mekkora valószínűséggel pozitív a teszt; *feltéve*, hogy az alanyunk egészséges, mekkora valószínűséggel negatív. A korábban látott magyarázat talán értelmessé teszi ezeket a mutatókat, de ha jobban meggondoljuk, akkor valójában ezek nagyon is furcsák: arra feltételeznek, amit *nem tudunk*, és annak a valószínűségét kérdezzük meg, amit meg pontosan *tudunk*, kérdezés nélkül is! Mintha reggel 8 előtt kilépve az ajtón nem azt kérdeznénk, hogy feltéve, hogy 8 előtt elindultam, mekkora valószínűséggel fogom elérni a buszt, hanem azt, hogy ha elérem a buszt, akkor mekkora valószínűséggel indultam el 8 előtt...

A probléma tehát a szenzitivitással és a specificitással, hogy *megfordítják az információáramlás irányát*, pont fordítva feltételeznek, mint ami értelmes lenne: arra feltételeznek, amit *nem* ismerünk, szemben azzal, ahogy egy feltételes valószínűségnél logikus, ahogy az előző pontban kifejtettünk. Minket nem az érdekel, hogy feltéve, hogy az alany beteg, mekkora valószínűséggel pozitív a tesztje, hanem az, hogy feltéve, hogy pozitív a tesztje, mekkora valószínűséggel beteg! Ez felel meg a *tényleges* információáramlásnak.

Az igazság egyébként az, hogy ez egyáltalán nem példátlan eset az orvoslásban. Egy másik példa, csakhogy jobban illusztrálja ezt a pontot: "ez a kór jobban sújtja a férfiakat: a betegek kétharmada férfi". (Rengeteg ilyen jellegű megállapítás olvasható, nemcsak a laikus, az orvosi irodalomban is.) Ugye milyen logikus? Nem, egyáltalán nem az! Gondoljuk meg: ez a kijelentés egy feltételes valószínűség: *feltéve*, hogy az alany beteg, mekkora valószínűséggel férfi. Ennek meg mi értelme? Ott áll az orrom előtt az alany, és azt kérdezem, hogy *feltéve*, hogy beteg, mekkora a valószínűsége, hogy férfi?! Miközben ott áll Béla előttem? Tehát megkérdezem, hogy feltéve valamit, amit nem tudok, mekkora a valószínűsége valaminek, amit tudok?! Természetesen semmi értelme ennek, a releváns kérdés a fordítottja: feltéve, hogy az alany férfi, mekkora valószínűséggel beteg! (Pl. nemspecifikus prevalencia.) Hogy miért használható mégis a fenti számítás? Egész egyszerűen azért, mert a férfiak-nők aránya nagyjából fele-fele a lakosságban... de ettől még nem válik helyessé ez a logika. *Hajszálpontosan* ugyanazzal a fent bemutatott számítással lehetne megmutatni, hogy a fenti kijelentés egyáltalán nem feltétlenül jelenti azt, hogy a férfiak kockázata nagyobb, sőt, akár még kisebb is lehet - ha a férfiak aránya több mint kétharmad lenne (gondoljuk végig!). Ha valaki ezt nem hinné el, az gondolja meg, hogy a következő kijelentést is ugyanúgy elfogadná-e: "ez a kór jobban sújtja az 1 évnél idősebbeket: a betegek kétharmada 1 évnél idősebb". 

Látható tehát, hogy a pozitív és negatív prediktív érték azért fontos, mert *ezek* adják meg a választ a klinikailag releváns kérdésre, ezeknél felel meg a valóságnak az információáramlás iránya.

## A helyes logika

Néha azzal szoktak érveli a szenzitivitás és a specificitás használata mellett, hogy ezek maguknak a teszteknek a tulajdonságai, "rá lehet őket nyomtatni a dobozukra" (szemben a prediktív értékekkel, amik attól is függnek, hogy milyen populációban alkalmazzuk a tesztet). Ez valójában sajnos nem teljesen igaz: egy sor teszt esetében igenis változó a szenzitivitás és a specificitás (függ az alany életkorától, nemétől, társbetegségeitől stb., például elég tipikus, hogy a súlyosabb betegséget könnyebb észrevenni, így a súlyosabb betegeknél egyre szenzitívebb a teszt), de maga a logika teljesen racionális, már amennyiben azt a részét tekintjük, hogy a fenti számítással a betegség fennállásának a valószínűségét igyekszünk nyomonkövetni. Ha nem tudunk semmit, akkor ez a valószínűség annyi, mint a prevalencia, ha megismerünk valamilyen teszteredményt (még egyszer: ide értjük azt is, hogy milyen panasza van a betegnek, sőt, azt is, hogy megtudjuk, hogy mi a neme vagy életkora), akkor a fenti számítás logikájával "update-eljük" a valószínűséget.

Ez a helyes logika: nagyon fontos, hogy soha nem bináris kategóriákban ("beteg" - "nem beteg") kell gondolkozni, hanem valószínűségben: "mekkora valószínűséggel beteg". Aminek van teszt előtti, és teszt utáni értéke, illetve általában, a diagnosztikai munka során finomodik.

(Valaki azt mondhatja, hogy de hát bizonyos esetekben "biztos", hogy az alany beteg. Ez egyáltalán nem mond ellent a fenti gondolkodási keretnek, sőt, tökéletesen értelmezhető abban is: egész egyszerűen ez esetben 100% a betegség fennállásának a valószínűsége.)

Megjegyzendő, hogy mindehhez igazából nincs is szükség szenzitivitásra és specificitásra, negatív és pozitív prediktív értékre sem, megfelelő statisztika modellekkel egyszerűen megbecsülhető a beteg kockázata - figyelembe véve azokat az információkat, amiket ismerünk róla.

A dolog azért sem mindegy, mert valójában a szenzitivitás/specificitásnak, de a pozitív és negatív prediktív értéknek ugyanúgy, van még egy megkerülhetetlen hátránya: az, hogy csak úgy értelmezhetőek, ha mind a betegség, mind a teszteredmény bináris! Mindkettőnek egyszerre binárisnak kell lennie, különben fogalmilag értelmezhetetlenek ezek a mutatók. A probléma az, hogy ezek valójában nem binárisak. A betegségről az imént volt szó, de igazából sokszor a teszteredmény sem az! Van, amikor igen (férfi-e az alany), de a legtöbb teszteredmény nem ilyen, hanem mondjuk egy szám, tipikusan ilyenek a laboreredmények, és *nagyon* nem ugyanaz, ha a CRP 10 mg/l, ha 100, vagy ha 500. Mégis, ahhoz, hogy szenzitivitásról, specificitásról vagy prediktív értékekről egyáltalán beszélni lehessen, ezt valahogy binárissá kell tenni, amit (sajnos) meg is tudnak tenni: úgy, hogy leraknak egy határértéket, ami fölött "pozitív", alatta "negatív". Ennek tarthatatlansága gyönyörűen látszik abból is, hogy a felsorolt három érték ebben a logikában ugyanaz (pozitív), tehát teljesen elveszlik az az információ ami a számértékükben van, amitől - valójában - nagyon nem ugyanazok. Specificitáshoz, szenzitivitáshoz, prediktív értékekhez ezt ki kell dobnunk a kukába!

Tovább rontja a helyzetet, hogy a határértéket lehetetlen jól megválasztani. Az egyik gond, hogy a határértéket nem lehet *pusztán* a laboreredmény alapján meghatározni; erről a kérdésről fog szólni a következő pont. A másik baj, hogy a határértéket igazából eleve nem egy konkrét teszteredményre kell rárakni, hanem az alany - teszteredmények *összessége* alapján kialakuló - kockázatára! Természetesen ez alapján kell mindig dönteni, nem egyetlen izolált eredmény alapján (simán lehet például, hogy két dolog külön-külön még nem lenne nagyon gyanús, de együtt már igen).

Összeségében tehát a binarizálást el kell kerülni, ami azt jelenti, hogy a szenzitivitás, specificitás és prediktív értékek használatát is el kell kerülni. A helyes, ha a betegség esetében is valószínűségben gondolkodunk, és a tesztnél is az eredeti értéket használjuk a valószínűség frissítésére: a 10-es CRP csak kicsit növeli a valószínűséget, az 500-es sokkal jobban.

Úgyhogy megint ugyanoda lyukadunk ki: hogy a valószínűséget kell nyomonkövetni, és azt kell megfelelő - statisztikai - módszerekkel frissíteni. Szokták mondani, hogy de abból nem derül ki a tévedés valószínűsége, ám épp ellenkezőleg: a valószínűség *beépítetten* tartalmazza ezt, hiszen ha mondjuk 30% adott betegség fennállásának a valószínűsége, az egyúttal azt is jelenti, hogy 30% a tévedés valószínűsége, ha nem kezeljük a beteget.

## Orvosi döntéshozatal

Egyetlen kérdést kell még lezárnunk. Addig rendben van, hogy valószínűségekben gondolkozunk, mondjuk, hogy 83% a betegség fennállása, de ebből hogyan lesz döntés? Hiszen, mondhatja valaki, legvégül mégiscsak muszáj binárisnak kell lenni, mert egy kezelést vagy megkezdünk, vagy nem, nem lehet 83%-ig megkezdeni. (Egyébként ez sem feltétlenül igaz: bizonyos esetekben lehet alacsonyabb dózist adni, ha nem vagyunk tökéletesen biztosak, lehet még kicsit várni a műtéttel, ha nem vagyunk tökéletesen biztosak stb., de ami a legfontosabb: lehet köztes zóna, ahol azt mondjuk, hogy sem betegnek nem tekintjük, sem egészségesnek, hanem pont itt, ebben a zónában még rendelünk további vizsgálatot, hogy eloszlassuk a kételyt.)

De ettől eltekintve teljesen jogos az észrevétel, azonban egy dolgot nagyon tisztán kell látnunk: ez már egy *másik* probléma! A statisztikai probléma ott végetér, hogy megmondjuk, hogy 83%-ra becsüljük a betegség fennállásának a valószínűségét. Az, hogy a 83% elég nagy-e ahhoz, hogy kezelést kezdjünk, más vizsgálatot rendeljünk stb., már *nem* statisztikai kérdés, és nem is *lehet* az, ennek eldöntéséhez ugyanis egy teljesen más információval kell rendelkeznünk: azzal, hogy milyen kockázatai vannak a kezelés vagy további vizsgálat szükségtelen megkezdésének, és milyen kockázatai vannak a szükséges kezelés vagy további vizsgálat meg nem kezdésének! Azaz kockázat/haszon adatokra van szükségünk; ez tehát már nem statisztikai, hanem döntéselméleti probléma! Kockázat/haszon adatok nélkül elvileg is lehetetlen választ adni a kérdésre, ami abból is látszik, hogy *ugyanaz* a 83% jelentheti azt is, hogy megkezdjük a kezelést (ha annak elmaradása nagy kockázatú, pontosabban szólva: nagy kockázatú, a feleslegesen végzett kezelés kockázatához képest), és azt is, hogy nem kezdjünk meg (olyan esetben, amikor a feleslegesen végzett kezelés nagyobb kockázatú, mint az indokolt kezelés elhagyása).

Összefoglalva tehát: a két részt *szét kell csatolni*. Az az *egyik* probléma, hogy az alany mekkora valószínűséggel szenved adott betegségben, és az egy *ettől független, másik* probléma, hogy ezen valószínűség fényében betegnek minősítsük-e, és megkezdjük-e a kezelését, vagy tegyünk-e egyéb lépést. Ez utóbbi nem statisztikai kérdés, mert csak a kockázatok és hasznok fényében válaszolható meg.

<!-- ## Egy részletesen végigvitt esettanulmány

A helyes módszer a második rész, a döntéselméleti probléma megoldására, hogy azonosítjuk a lehetséges kimeneteket, 

Nézzünk egy konkrét példát, hogy jobban érthető legyen a gondolat. Tegyük fel, hogy -->