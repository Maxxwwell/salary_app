import 'package:flutter/material.dart';
import 'package:salary_app/widgets/popup_menu.dart';
import 'package:salary_app/widgets/textfield_decoration.dart';
import 'package:salary_app/widgets/title_image.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _takeHome = '0.00';
  String _tax = '0.00';
  String _pension = '0.00';
  String _employerPension = '0.00';

  void convertSalary(salary) {
    salary = double.parse(salary);
    setState(() {
      double tax = salary * 0.08;
      double pension = salary * 0.02;
      double ePension = salary * 0.1;
      double takeHome = salary - tax - pension - ePension;
      _tax = tax.toStringAsFixed(2);
      _pension = pension.toStringAsFixed(2);
      _employerPension = ePension.toStringAsFixed(2);
      _takeHome = takeHome.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          elevation: 0,
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          actions: const [
            PopupIcon(),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: MediaQuery.of(context).size.height * 0.88,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Know Your Salary, Tax and Allowances',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                onChanged: (value) {
                  convertSalary(value);

                  print(value);
                },
                decoration: textFieldDecoration(context),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Title_Image(
                        image: 'assets/icons/wallet.png',
                        title: 'Take Home Amount',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.2),
                        child: Text(
                          'GH₵ ' + _takeHome,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Wrap(
                spacing: 10,
                runSpacing: 15,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Title_Image(
                            image: 'assets/icons/tax.png',
                            title: 'PAYE Tax',
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'GH₵ ' + _tax,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Title_Image(
                            image: 'assets/icons/money.png',
                            title: 'Pension +',
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'GH₵ ' + _pension,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: double.infinity,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Title_Image(
                            image: 'assets/icons/vault.png',
                            title: 'Employer Pension Amount',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.2),
                            child: Text(
                              'GH₵ ' + _employerPension,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
