require('./bootstrap');

window.Vue = require('vue');

import Axios from 'axios'

// base url
Axios.defaults.baseURL = 'http://localhost:8000'

import Example from './components/ExampleComponent.vue'
import AddProduct from './components/a3/AddProduct'
import MasterData from './components/a3/MasterData'
import CoqReport from './components/a3/CoqReport'
import BeforeReport from './components/a3/BeforeReport'
import AfterReport from './components/a3/AfterReport'
import DistributionReport from './components/a3/DistributionReport'


const app = new Vue({
    el: '#app',
    components: {
        'example-component': Example,
        'add-product': AddProduct,
        'master-data': MasterData,
        'coq-report': CoqReport,
        'before-report': BeforeReport,
        'after-report': AfterReport,
        'distribution-report': DistributionReport
    }
});
