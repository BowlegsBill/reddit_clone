const rails_ujs = require("@rails/ujs")
import $ from 'jquery';

$(document).on('turbolinks:load', () => {
  console.log('hello')
})

$(document).on('turbolinks:load', () => {
  $('.js-post-up-vote').on('click', function() {
    const id = $(this).data('id');
    rails_ujs.ajax({
      url: `/posts/${id}/reactions/up`,
      dataType: 'json',
      type: 'POST',
      error: () => alert('You fucked up'),
      success: (res) => $(this).toggleClass('text-green')
    })
  })
});

$(document).on('turbolinks:load', () => {
  $('.js-post-down-vote').on('click', function() {
    const id = $(this).data('id');
    rails_ujs.ajax({
      url: `/posts/${id}/reactions/down`,
      dataType: 'json',
      type: 'POST',
      success: (res) => $(this).toggleClass('text-red')
    })
  })
});
