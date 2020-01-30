<template>
  <span>
      <form>
        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <select @change="change_product" v-model="product_id" name="produk" class="custom-select">
                        <option v-for="(product, index) in products" :value="product.id" :key="index">{{ product.product_name }}</option>
                    </select>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <select  v-model="parameter" class="custom-select">
                        <option v-for="(param, index) in parameter_uji" :value="param.id" :key="index">{{ param.parameter }}</option>
                    </select>
                </div>                                
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <input v-model="metode" type="text" class="form-control" placeholder="Method test..." required>
                </div>                                
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <input v-model="unit" type="text" class="form-control" placeholder="Unit..." required>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <input v-model="limit_min" type="text" class="form-control" placeholder="Limitation min..." required>
                </div>                                
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <input v-model="limit_max" type="text" class="form-control" placeholder="Limitation max..." required>
                </div>                                
            </div>

            <div class="col-md-2">
                <div class="form-group">
                    <div @click="create_master_data" class="btn btn-primary circle pl-4 pr-4" style="cursor: pointer">Add</div>
                </div>                                
            </div>
        </div>
    </form>
    <div class="table-responsive">
        <table id="table" class="table table-theme v-middle mt-3" data-plugin="bootstrapTable"
        data-toolbar="#toolbar" data-search="true" data-search-align="left" data-show-export="true"
        data-show-columns="true" data-detail-view="false" data-mobile-responsive="true"
        data-pagination="true" data-page-list="">
            <thead>
                <tr>
                    <th data-sortable="true" data-field="produk">Parameter</th>
                    <th data-sortable="true" data-field="produk">Method test</th>
                    <th data-sortable="true" data-field="produk">Unit</th>
                    <th data-sortable="true" data-field="produk">Limitation min</th>
                    <th data-sortable="true" data-field="produk">Limitation max</th>
                    <th data-field="upload"><span class="d-sm-block">Updated Date</span></th>
                    <th data-field="upload"><span class="d-sm-block">Actions</span></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr v-if="master_data.length < 1">
                    <td colspan="10" class="text-center">No data</td>
                </tr>
                <tr v-else class="" data-id="" v-for="(md, index) in master_data" :key="md.id">
                    <td>
                        <span class="item-amount d-sm-block text-sm ">
                            {{ md.parameter }}
                        </span>
                    </td>
                    <td>
                        <span class="item-amount d-sm-block text-sm">
                            {{ md.metode }}
                        </span>
                    </td>
                    <td>
                        <span class="item-amount d-sm-block text-sm ">
                            {{ md.unit }}
                        </span>
                    </td>
                    <td>
                        <span class="item-amount d-sm-block text-sm">
                            {{ md.limit_min }}
                        </span>
                    </td>
                    <td>
                        <span class="item-amount d-sm-block text-sm">
                            {{ md.limit_max }}
                        </span>
                    </td>
                    <td>
                        <span class="item-amount d-sm-block text-sm ">
                            {{ md.updated_at }}
                        </span>
                    </td>
                    <td>
                        <span class="item-amount d-sm-block text-sm">
                            <span @click="update_data_modal(md.id, md.parameter, md.product_id, md.metode, md.unit, md.limit_min, md.limit_max)" data-toggle="modal" data-target="#update" class="badge md-badge badge-primary text-uppercase p-1">Update</span>
                            <span @click="delete_master_data(md.id, index)" class="badge md-badge badge-danger text-uppercase p-1">Delete</span>
                        </span>
                    </td>

                    <!-- Modal -->
                    <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Perbarui Parameter</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" v-model="up_product_id">
                                <div class="form-group">
                                    <label>Parameter</label>
                                    <input v-model="up_parameter" type="text" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label>Method Test</label>
                                    <input v-model="up_metode" type="text" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label>Unit</label>
                                    <input v-model="up_unit" type="text" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label>Limitation Min</label>
                                    <input v-model="up_limit_min" type="text" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label>Limitation Max</label>
                                    <input v-model="up_limit_max" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button @click="update_parameter(index)" data-dismiss="modal" type="button" class="btn btn-primary">Save changes</button>
                            </div>
                            </div>
                        </div>
                    </div>
                </tr>
            </tbody>
        </table>
    </div>
  </span>
</template>

<script>
export default {
    data () {
        return {
            reload: true,
            products: [],
            master_data: [],
            parameter_uji: [],
            // update var
            up_product_id: '',
            up_parameter: '',
            up_metode: '',
            up_unit: '',
            up_limit_min: '',
            up_limit_max: '',

            product_id: '',
            parameter: '',
            metode: '',
            unit: '',
            limit_min: '',
            limit_max: '',
            // id update
            id_update: '',
        }
    },
    methods: {
        get_products() {
            axios.get('api/products')
            .then(response => {
                this.products = response.data                          
            })
        },
        get_param() {
            axios.get('api/test-prices')
            .then(response => {
                this.parameter_uji = response.data               
            })
            .catch(error => {
                console.log(error);
            })
        },
        get_data() {
            axios.get('api/masters')
            .then(response => {
                this.master_data = response.data.data  
                this.product_id = response.data.product_id            
            })
        },
        change_product() {
            axios.get(`api/masters/${this.product_id}`)
            .then(response => {
                this.master_data = response.data.data                
            })
        },
        delete_master_data(id, index) {
            axios({
                method: 'delete',
                url: `api/masters/${id}`
            })
            .then(response => {
                alert('Successfully deleted');
                this.master_data.splice(index, 1)
            })
            .catch(error => {
                alert('Something went wrong')
            })
        },
        update_data_modal(id, parameter, product_id, metode, unit, limit_min, limit_max) {
            this.up_product_id = product_id
            this.up_parameter = parameter
            this.up_metode = metode
            this.up_unit = unit
            this.up_limit_min = limit_min 
            this.up_limit_max = limit_max
            this.id_update = id
        },
        update_parameter(index) {
            axios({
                method: 'put',
                url: `api/masters/${this.id_update}`,
                data: {
                    product_id: this.up_product_id,
                    parameter: this.up_parameter,
                    metode: this.up_metode,
                    unit: this.up_unit,
                    limit_min: this.up_limit_min,
                    limit_max: this.up_limit_max,
                }
            })
            .then(response => {
                this.master_data = response.data                
            })
        },
        create_master_data() {
            axios({
                method: 'post',
                url: 'api/masters',
                data: {
                    product_id: this.product_id,
                    parameter: this.parameter,
                    metode: this.metode,
                    unit: this.unit,
                    limit_min: this.limit_min,
                    limit_max: this.limit_max,
                    test_price_id: this.parameter,
                    email: localStorage.getItem('email')
                }
            })
            .then(response => {
                this.master_data.push(response.data.new_data)   
                console.log(response);
                             
            })
            .catch(error => {
                console.log(error);                
            })
        }
    },
    created() {
        this.get_products()
        this.get_data()
        this.get_param()

        if (localStorage.getItem('reloaded')) {
            localStorage.removeItem('reloaded');
        } else {
            localStorage.setItem('reloaded', '1');
            location.reload();
        }
    },
}
</script>

<style>
.md-badge{
    cursor: pointer;
}
</style>