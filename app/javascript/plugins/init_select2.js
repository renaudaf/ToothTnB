import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#toothbrush_tags').select2({theme: "classic"});
};

export { initSelect2 };
