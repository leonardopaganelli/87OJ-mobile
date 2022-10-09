// https://www.jusbrasil.com.br/processos/468659444/processo-n-502XXXX-2120218080024-do-tjes

Array.from(
  document
    .querySelector(".InfiniteList.LawsuitTimeline-list")
    .querySelectorAll(".LawsuitTimeline-group")
)
  .slice(2)
  .map((group) => ({
    date: group.querySelector(".LawsuitTimeline-date-absolute span").innerHTML,
    documents: Array.from(
      group.querySelectorAll(".LawsuitTimeline-document")
    ).map((currentDocument) => ({
      label: currentDocument.querySelector(".LawsuitActivityItem-label")
        .innerHTML,
      description: currentDocument.querySelector(".LawsuitActivityItem-text")
        .innerHTML,
    })),
  }))[
  ({
    date: "14/08/2022",
    documents: [
      {
        label: "Andamento",
        description: "Expedição de Certidão.",
      },
    ],
  },
  {
    date: "08/08/2022",
    documents: [
      {
        label: "Andamento",
        description: "Juntada de Petição de contrarrazões",
      },
    ],
  },
  {
    date: "19/07/2022",
    documents: [
      {
        label: "Andamento",
        description: "Expedição de Certidão.",
      },
      {
        label: "Andamento",
        description: "Expedição de intimação eletrônica.",
      },
    ],
  },
  {
    date: "04/07/2022",
    documents: [
      {
        label: "Andamento",
        description: "Juntada de Petição de recurso inominado",
      },
    ],
  },
  {
    date: "27/06/2022",
    documents: [
      {
        label: "Andamento",
        description: "Juntada de Petição de petição (outras)",
      },
    ],
  },
  {
    date: "20/06/2022",
    documents: [
      {
        label: "Andamento",
        description: "Disponibilizado no DJ Eletrônico em 15/06/2022",
      },
      {
        label: "Andamento",
        description: "Publicado Intimação eletrônica em 20/06/2022.",
      },
    ],
  },
  {
    date: "14/06/2022",
    documents: [
      {
        label: "Andamento",
        description: "Expedição de intimação eletrônica.",
      },
    ],
  },
  {
    date: "12/05/2022",
    documents: [
      {
        label: "Andamento",
        description: "Processo Inspecionado",
      },
      {
        label: "Andamento",
        description:
          "Julgado procedente em parte do pedido de DOUGLAS COSTA KOEHLER - CPF: XXX.425.947-XX (REQUERENTE).",
      },
    ],
  },
  {
    date: "29/03/2022",
    documents: [
      {
        label: "Andamento",
        description: "Expedição de Certidão.",
      },
      {
        label: "Andamento",
        description: "Conclusos para julgamento",
      },
    ],
  },
  {
    date: "28/03/2022",
    documents: [
      {
        label: "Andamento",
        description: "Juntada de Petição de réplica",
      },
    ],
  },
  {
    date: "07/03/2022",
    documents: [
      {
        label: "Andamento",
        description:
          "Audiência Conciliação realizada para 07/03/2022 14:30 Vitória - Comarca da Capital - 9º Juizado Especial Cível.",
      },
      {
        label: "Andamento",
        description: "Expedição de Certidão - Intimação.",
      },
      {
        label: "Andamento",
        description: "Juntada de Petição de petição (outras)",
      },
      {
        label: "Andamento",
        description: "Expedição de Termo de Audiência.",
      },
    ],
  },
  {
    date: "03/03/2022",
    documents: [
      {
        label: "Andamento",
        description: "Juntada de Petição de petição (outras)",
      },
    ],
  },
  {
    date: "31/01/2022",
    documents: [
      {
        label: "Andamento",
        description: "Juntada de Petição de petição (outras)",
      },
    ],
  },
  {
    date: "16/12/2021",
    documents: [
      {
        label: "Andamento",
        description: "Disponibilizado no DJ Eletrônico em 15/12/2021",
      },
      {
        label: "Andamento",
        description: "Publicado Intimação eletrônica em 16/12/2021.",
      },
    ],
  },
  {
    date: "14/12/2021",
    documents: [
      {
        label: "Andamento",
        description:
          "Audiência Conciliação redesignada para 07/03/2022 14:30 Vitória - Comarca da Capital - 9º Juizado Especial Cível.",
      },
      {
        label: "Andamento",
        description: "Expedição de intimação eletrônica.",
      },
      {
        label: "Andamento",
        description: "Expedição de carta postal - intimação.",
      },
      {
        label: "Andamento",
        description: "Proferido despacho de mero expediente",
      },
      {
        label: "Andamento",
        description: "Juntada de Petição de petição (outras)",
      },
    ],
  },
  {
    date: "13/12/2021",
    documents: [
      {
        label: "Andamento",
        description: "Conclusos para decisão",
      },
      {
        label: "Andamento",
        description: "Juntada de Petição de petição (outras)",
      },
    ],
  },
  {
    date: "10/12/2021",
    documents: [
      {
        label: "Andamento",
        description: "Juntada de Petição de contestação",
      },
      {
        label: "Andamento",
        description: "Juntada de Petição de petição (outras)",
      },
    ],
  },
  {
    date: "04/11/2021",
    documents: [
      {
        label: "Andamento",
        description: "Juntada de Outros documentos",
      },
      {
        label: "Andamento",
        description: "Juntada de Certidão",
      },
    ],
  },
  {
    date: "29/10/2021",
    documents: [
      {
        label: "Andamento",
        description: "Expedição de intimação eletrônica.",
      },
      {
        label: "Andamento",
        description: "Distribuído por sorteio",
      },
      {
        label: "Andamento",
        description: "10094065 - Petição inicial (PDF) (Douglas x BB. INICIAL)",
      },
      {
        label: "Andamento",
        description:
          "Expedição de Certidão.\n10096330 - Certidão (AUDIÊNCIA TELEPRESENCIAL ZOOM)",
      },
      {
        label: "Andamento",
        description:
          "Audiência Conciliação designada para 15/12/2021 13:00 Vitória - Comarca da Capital - 9º Juizado Especial Cível.",
      },
      {
        label: "Andamento",
        description: "Expedição de Certidão.",
      },
    ],
  })
];
