<template>
<span>
    <div class="table-responsive">
        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <label>Pilih Produk</label>
                    <select @change="change_product" v-model="product_id" name="produk" class="custom-select">
                        <option v-for="(product, index) in products" :value="product.id" :key="index">{{ product.product_name }}</option>
                    </select>
                </div>
            </div>
        </div>

        <table id="table" class="table table-theme v-middle" data-plugin="bootstrapTable"
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
                    <th><span class="d-sm-block">Result</span></th>
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
                        <span class="item-amount d-sm-block text-sm">
                            <div class="form-group">
                                <input v-model="result[index]" type="text" class="form-control" placeholder="...">
                            </div>
                        </span>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card p-3">
                <div class="form-group">
                    <label>No Test</label>
                    <input v-model="no_test" type="text" class="form-control">
                </div>

                <div class="form-group">
                    <label>Jenis Test</label>
                    <select v-model="jenis_pemeriksaan" class="custom-select">
                        <option selected>Short Test</option>
                        <option>Complete Test</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Asal Sample</label>
                    <input v-model="asal_sample" type="text" class="form-control">
                </div>

                <div class="form-group">
                    <label>Distribution</label>
                    <textarea v-model="distribution_detail" class="form-control" cols="30" rows="3"></textarea>
                    <small class="text-muted">Gunakan tanda ';' untuk daftar lebih dari satu</small>
                </div>

                <div class="form-group">
                    <input v-model="penandatangan" type="text" class="form-control">
                    <small class="text-muted">Pisahkan jabatan dan penandatangan menggunakan ';', contoh Supervisor;Merwinanto</small>
                </div>
                <div class="form-group">
                    <div @click="make_report" class="btn btn-primary">Create</div>
                </div>
            </div>
        </div>
    </div>
</span>
</template>

<script>
export default {
    data () {
        return {
            products: [],
            master_data: [],

            product_id: '',
            asal_sample: '',
            no_test: '',
            jenis_pemeriksaan: 'Short Test',
            penandatangan: '',
            distribution_detail: '',
            // result
            result: [],
            // before
            before: []
        }
    },
    methods: {
        get_products() {
            axios.get('api/products')
            .then(response => {
                this.products = response.data                          
            })
        },
        get_master_data() {
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
        get_before() {
            axios.get('api/before-reports')
            .then(response => {
                this.before = response.data
            })
        },
        make_report() {
            axios({
                method: 'post',
                url: 'api/before-reports',
                data: {
                    product_id: this.product_id,
                    asal_sample: this.asal_sample,
                    no_test: this.no_test,
                    jenis_pemeriksaan: this.jenis_pemeriksaan,
                    penandatangan: this.penandatangan,
                    distribution_detail: this.distribution_detail,
                    result: this.result,
                    type: 'before'
                }
            })
            .then(response => {
                console.log(response);                
            }).catch(error => {
                console.log(error);                
            })
        }
    },
    created() {
        this.get_products()
        this.get_master_data()
        this.get_before()

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

</style>