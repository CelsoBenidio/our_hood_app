import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $(document).ready(function() {
    $('.select2_form').select2();
  });
};

export { initSelect2 };
