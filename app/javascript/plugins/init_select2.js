import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#toothbrush_tag_tag').select2({theme: "classic"});
  console.log(document.getElementById('toothbrush_tag_tag'));
};

export { initSelect2 };
