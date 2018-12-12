const initTooltip = () => {
  $('[data-toggle="tooltip"]').tooltip();

  $('.journey_destination_city').on('click', '.tooltip-inner', function(){
    // Set destination city to 'PARTOUT'
    const cityInput = document.getElementById("journey_destination_city");
    cityInput.value = "Partout";

    // Close the tooltip
    $('#journey_destination_city').tooltip('hide')
  });

  $('.journey_destination_city').on('keypress', function(){
    // Close the tooltip
    $('#journey_destination_city').tooltip('hide')
  });
};

export { initTooltip };



