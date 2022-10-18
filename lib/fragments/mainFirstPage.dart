import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';

class mainFirstPage extends StatelessWidget {
  static const String routeName = '/mapPage';

  const mainFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: "Studentska konferencija “Savremena matematika i primene – AfterMath“ održaće se od 26. do 30. oktobra 2022. godine u Studentskom kompleksu „Palić“ na Paliću.\nKonferencija ima za cilj da promoviše multidisciplinarnost kao i da stvori jedinstvenu priliku za razmenu i implementaciju naučnih dostignuća, te upozna studente sa njihovim mogućnostima nakon završetka studija. Učešćem na događaju studenti se mogu edukovati u vezi sa aktuelnim i interesantnim pitanjima iz oblasti matematike, informatike i astronomije.\nOd najboljih profesora Univerziteta u Beogradu i gostujućih predavača iz kompanija partnera projekta, imaćete priliku da učite i upoznate se sa novim pravcima u istraživanjima i postignutim rezultatima, te da se informišete o načinu poslovanja vodećih kompanija na našem tržištu i steknete neophodna znanja za prve korake u izgradnji karijere. Kompanije svojim predavanjima pokrivaju popularne teme iz softverskog inženjeringa, gejminga, aktuarstva i novih programskih jezika.\nNezadrživo i brzo prodiranje matematičkih ideja i metoda u gotovo sve grane nauke, tehnike i prakse jedna je od najbitnijih odlika savremene matematike. Kroz radionice, predavanja i diskusije sa predavačima, razumećete zašto je matematika danas suštinsko oruđe u mnogim naučnim oblastima.",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 28,
              ),
            )
          ]
        )
    );
  }
}