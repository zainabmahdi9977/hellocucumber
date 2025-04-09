const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

// Step definitions
Given('today is {string}', function (day) {
  this.today = day;
});

Given('Booking period is {string}', function (period) {
  this.period = period;
});

When('save the Booking', function () {
  this.price = BookingPeriod(this.period, this.today);
});

Then('price will be {int}', function (expectedPrice) {
  assert.strictEqual(this.price, expectedPrice);
});


function isItWeekend(today) {
  return (today === "Saturday" || today === "Friday") ? "weekend" : "weekday";
}


function BookingPeriod(period, today) {    
  let price;

  const weekend = isItWeekend(today) === "weekend";

  if (period === "morning") {
    price = weekend ? 100 : 70;  
  } else if (period === "evening") {
    price = weekend ? 80 : 50;    
  } else {
    throw new Error("Invalid period specified");
  }

  return price;
}