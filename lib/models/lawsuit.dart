import 'package:flutter/material.dart';
import 'package:lawsuit_app/models/plaintiff.dart';

import 'court.dart';
import 'date.dart';
import 'defendant.dart';
import 'document.dart';
import 'involved.dart';
import 'lawyer.dart';

class Lawsuit {
  String? id;
  Court? court;
  List<String>? subjects;
  String? nature;
  String? judicialBranch;
  String? initDate;
  num? amountInControversy;
  Involved? involved;
  List<Date>? timeLine;

  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;

  Lawsuit({
    this.id,
    this.court,
    this.subjects,
    this.nature,
    this.judicialBranch,
    this.initDate,
    this.amountInControversy,
    this.involved,
    this.timeLine,
    this.iconColor,
    this.btnColor,
    this.left,
    this.done,
  });

  static List<Lawsuit> generateLawSuits() {
    return [
      Lawsuit(
        id: '502XXXX-21.2021.8.08.0024',
        court: Court(
            name: 'Tribunal de Justiça do Espírito Santo',
            alias: 'TJES',
            city: 'Vitória',
            state: 'Espírito Santo'),
        subjects: ['Responsabilidade Civil', 'Indenização por dano'],
        nature: 'Procedimento do juizado especial cível',
        judicialBranch:
            'Justiça dos Estados e do Distrito Federal e Territórios',
        initDate: '2021-10-29',
        amountInControversy: 3000,
        involved: Involved(
          plaintiff: Plaintiff(
              perpetrator: 'Douglas Costa Koehler',
              lawyer: Lawyer(
                  id: 'OAB 6739/ES', name: 'Jerize Terciano de Almeida')),
          defendant: Defendant(
              accused: 'Banco do Brasil',
              lawyer: Lawyer(id: 'OAB 7716/MG', name: 'Ricardo Lopes Godoy')),
        ),
        timeLine: [
          Date(
            date: "14/08/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Expedição de Certidão.",
              )
            ],
          ),
          Date(
            date: "08/08/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Juntada de Petição de contrarrazões",
              )
            ],
          ),
          Date(
            date: "19/07/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Expedição de Certidão.",
              ),
              Document(
                label: "Andamento",
                description: "Expedição de intimação eletrônica.",
              )
            ],
          ),
          Date(
            date: "04/07/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Juntada de Petição de recurso inominado",
              )
            ],
          ),
          Date(
            date: "27/06/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Juntada de Petição de petição (outras)",
              )
            ],
          ),
          Date(
            date: "20/06/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Disponibilizado no DJ Eletrônico em 15/06/2022",
              ),
              Document(
                label: "Andamento",
                description: "Publicado Intimação eletrônica em 20/06/2022.",
              )
            ],
          ),
          Date(
            date: "14/06/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Expedição de intimação eletrônica.",
              )
            ],
          ),
          Date(
            date: "12/05/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Processo Inspecionado",
              ),
              Document(
                label: "Andamento",
                description:
                    "Julgado ocedente em parte do pedido de DOUGLAS COSTA KOEHLER - CPF: XXX.425.947-XX (REQUERENTE).",
              ),
            ],
          ),
          Date(
            date: "29/03/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Expedição de Certidão.",
              ),
              Document(
                label: "Andamento",
                description: "Conclusos para julgamento",
              )
            ],
          ),
          Date(
            date: "28/03/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Juntada de Petição de réplica",
              )
            ],
          ),
          Date(
            date: "07/03/2022",
            documents: [
              Document(
                label: "Andamento",
                description:
                    "AudiênciConciliação realizada para 07/03/2022 14:30 Vitória - Comarca da Capital - 9º Juizado Especial Cível.",
              ),
              Document(
                label: "Andamento",
                description: "Expedição de Certidão - Intimação.",
              ),
              Document(
                label: "Andamento",
                description: "Juntada de Petição de petição (outras)",
              ),
              Document(
                label: "Andamento",
                description: "Expedição de Termo de Audiência.",
              )
            ],
          ),
          Date(
            date: "03/03/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Juntada de Petição de petição (outras)",
              )
            ],
          ),
          Date(
            date: "31/01/2022",
            documents: [
              Document(
                label: "Andamento",
                description: "Juntada de Petição de petição (outras)",
              )
            ],
          ),
          Date(
            date: "16/12/2021",
            documents: [
              Document(
                label: "Andamento",
                description: "Disponibilizado no DJ Eletrônico em 15/12/2021",
              ),
              Document(
                label: "Andamento",
                description: "Publicado Intimação eletrônica em 16/12/2021.",
              )
            ],
          ),
          Date(
            date: "14/12/2021",
            documents: [
              Document(
                label: "Andamento",
                description:
                    "AudiênciConciliação redesignada para 07/03/2022 14:30 Vitória - Comarca da Capital - 9º Juizado Especial Cível.",
              ),
              Document(
                label: "Andamento",
                description: "Expedição de intimação eletrônica.",
              ),
              Document(
                label: "Andamento",
                description: "Expedição de carta postal - intimação.",
              ),
              Document(
                label: "Andamento",
                description: "Proferido despacho de mero expediente",
              ),
              Document(
                label: "Andamento",
                description: "Juntada de Petição de petição (outras)",
              )
            ],
          ),
          Date(
            date: "13/12/2021",
            documents: [
              Document(
                label: "Andamento",
                description: "Conclusos para decisão",
              ),
              Document(
                label: "Andamento",
                description: "Juntada de Petição de petição (outras)",
              )
            ],
          ),
          Date(
            date: "10/12/2021",
            documents: [
              Document(
                label: "Andamento",
                description: "Juntada de Petição de contestação",
              ),
              Document(
                label: "Andamento",
                description: "Juntada de Petição de petição (outras)",
              )
            ],
          ),
          Date(
            date: "04/11/2021",
            documents: [
              Document(
                label: "Andamento",
                description: "Juntada de Outros documentos",
              ),
              Document(
                label: "Andamento",
                description: "Juntada de Certidão",
              )
            ],
          ),
          Date(
            date: "29/10/2021",
            documents: [
              Document(
                label: "Andamento",
                description: "Expedição de intimação eletrônica.",
              ),
              Document(
                label: "Andamento",
                description: "Distribuído por sorteio",
              ),
              Document(
                label: "Andamento",
                description:
                    "10094065 - Petição inicial (PDF) (Douglas x BB. INICIAL)",
              ),
              Document(
                label: "Andamento",
                description:
                    "Expediçãde Certidão.\n10096330 - Certidão (AUDIÊNCIA TELEPRESENCIAL ZOOM)",
              ),
              Document(
                label: "Andamento",
                description:
                    "AudiênciConciliação designada para 15/12/2021 13:00 Vitória - Comarca da Capital - 9º Juizado Especial Cível.",
              ),
              Document(
                label: "Andamento",
                description: "Expedição de Certidão.",
              )
            ],
          )
        ],
      ),
      Lawsuit()
    ];
  }
}
