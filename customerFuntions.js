
const daysInPortuguese = ['Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado'];
var tBody;
var birthFilter;
var dados;

 document.addEventListener('DOMContentLoaded', (event) => {

  tBody = document.getElementById('tableBody');
  birthFilter = document.getElementById('birthFilter');
  birthFilter.addEventListener('change', filterTable);

  fetch('components/services/customerService.cfc?method=getAllClientsJson')
    .then(response => response.json())
    .then(data => {
      dados = data; 
      filterTable();
    })
    .catch(error => {
      console.error('Erro ao buscar os dados:', error);
    });
});



  function filterTable() {
      const filterValue = birthFilter.value;
      const dataAtual = new Date();
      const currentMonth = dataAtual.getMonth() + 1; 

      tBody.innerHTML = '';

      dados.forEach(dado => {

          const birthMonth = parseInt(dado.data.split('/')[1], 10);
          let isWeekend = getIsWeekend(dado.data)
          let weekDay = getWeekDay(dado.data);

          if (filterValue === 'todos' || (filterValue === 'aniversariantes' && birthMonth === currentMonth)) {
              const linha = `<tr>
                  <td>${dado.codigo}</td>
                  <td>${dado.nome}</td>
                  <td>${dado.data}</td>
                  <td ${isWeekend ? 'style="font-weight: bold;"' : ''}>
                      ${weekDay}
                  </td>
              </tr>`;
              tBody.innerHTML += linha;
          }
      });
  }

  function getIsWeekend(data) {
    let day = stringToDate(data).getDay(); 
    return (day === 0 || day === 6) 
  }

  function getWeekDay(data){
    let day = stringToDate(data).getDay(); 
    return daysInPortuguese[day];
  }

  function stringToDate(dataString){
    let parts = dataString.split("/");
    let formattedDate = new Date(parts[2], parts[1] - 1, parts[0]);
    return formattedDate
  }
