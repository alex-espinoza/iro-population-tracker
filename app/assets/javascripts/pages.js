$(function() {
  new Morris.Line({
    element: 'population-information-chart',
    data: $('#population-information-chart').data('records'),
    xkey: 'time',
    ykeys: ['classic_online', 'classic_shops', 'renewal_online', 'renewal_shops'],
    labels: ['Classic Online', 'Classic Shops', 'Renewal Online', 'Renewal Shops']
  });
});
