<table style="width:100%">
  <tr>
    <th>ID</th>
    <th>Date</th>
    <th>Campagne</th>
    <th>quantite</th>
     <th>cause</th>
    <th>Observations</th>
    <th>DureDeVie</th>
    <th>Année</th>
  </tr>
  <tr>
    <td>{{ $lists->campagne_id}}</td>
    <td>{{ $lists->date_die}}</td>
    <td>{{ $lists->campagne}}</td>
    <td>{{ $lists->quantite}}</td>
    <td>{{$lists->cause}}</td>
    <td>{{ $lists->obs}}</td>
     <td>{{ $lists->duredevie}}</td>
     <td>{{ $lists->year}}</td>
  </tr>
</table> 