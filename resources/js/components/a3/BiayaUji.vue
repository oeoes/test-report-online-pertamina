<template>
  <div class="row">
      <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                <strong>Add product</strong>
            </div>
            <div class="card-body">
                <!-- <div id="myalert" class="alert alert-success" role="alert" style="display: none">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg>
                    <span class="mx-2"></span>
                </div> -->
                
                <form>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Parameter</label>
                        <div class="col-sm-8">
                            <input v-model="parameter" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Metode uji</label>
                        <div class="col-sm-8">
                            <input v-model="metode" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Harga</label>
                        <div class="col-sm-8">
                            <input v-model="harga" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div @click="add_biaya_uji" class="btn btn-primary circle pl-4 pr-4">{{ txt_add }}</div>
                    </div>
                    <hr>
                </form>

            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="card p-3">
            Daftar Biaya Uji
            <button style="width: 70px; position: absolute; right: 10px" class="btn btn-sm circle btn-primary" data-toggle="modal" data-target="#cetak">{{ txt_cetak }}</button>

            <!-- Modal cetak -->
            <div class="modal fade" id="cetak" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Perbarui Parameter</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Product Name</label>
                            <div class="col-sm-8">
                                <input v-model="cet_product_name" type="text" class="form-control">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">No. Test</label>
                            <div class="col-sm-8">
                                <input v-model="cet_no_test" type="text" class="form-control">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Asal Sample</label>
                            <div class="col-sm-8">
                                <input v-model="cet_asal_sample" type="text" class="form-control">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Date Report</label>
                            <div class="col-sm-8">
                                <input v-model="cet_date_report" type="date" class="form-control">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Jenis Pemeriksaan</label>
                            <div class="col-sm-8">
                                <input v-model="cet_jenis_pemeriksaan" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button @click="print_test_price" data-dismiss="modal" type="button" class="btn btn-primary">Cetak Sekarang</button>
                    </div>
                    </div>
                </div>
            </div>
            
            <hr>
            <div class="table-responsive">
                <table id="table" class="table table-theme v-middle mt-3"                         data-plugin="bootstrapTable"
                data-toolbar="#toolbar" data-search="true" data-search-align="left" data-show-export="true"
                data-show-columns="true" data-detail-view="false" data-mobile-responsive="true"
                data-pagination="true" data-page-list="[10, 25, 50, 100, ALL]">
                <thead>
                    <tr>
                        <th data-sortable="true" data-field="owner">#</th>
                        <th data-sortable="true" data-field="owner">Parameter</th>
                        <th data-sortable="true" data-field="produk">Metode</th>
                        <th data-field="date"><span class="d-sm-block">Harga (Rp)</span></th>
                        <th data-sortable="true" data-field="produk">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-if="!biaya_uji">
                        <td colspan="10" class="text-center">No data</td>
                    </tr>                              
                    <tr v-else class="" data-id="" v-for="(biaya, index) in biaya_uji" :key="index">
                        <td class="flex">
                            <a href=""></a>
                            <div class="item-except text-muted text-sm h-1x">
                                <input v-model="total" :value="biaya.id" type="checkbox">
                            </div>
                        </td>
                        <td class="flex">
                            <a href=""></a>
                            <div class="item-except text-muted text-sm h-1x">
                                {{ biaya.parameter }}
                            </div>
                        </td>
                        <td class="flex">
                            <a href=""></a>
                            <div class="item-except text-muted text-sm h-1x">
                                {{ biaya.metode }}
                            </div>
                        </td>
                        <td>
                            <span class="item-amount d-sm-block text-sm ">
                                {{ biaya.harga }}
                            </span>
                        </td>
                        <td>
                            <span class="item-amount d-sm-block text-sm ">
                                <span @click="update_data_modal(biaya.id, biaya.parameter, biaya.metode, biaya.harga)" data-toggle="modal" data-target="#update" class="badge md-badge badge-primary text-uppercase p-1">Update</span>
                            </span>
                        </td>
                    </tr>

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
                                <input type="hidden" v-model="up_id">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Parameter</label>
                                    <div class="col-sm-8">
                                        <input v-model="up_parameter" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Metode uji</label>
                                    <div class="col-sm-8">
                                        <input v-model="up_metode" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Harga</label>
                                    <div class="col-sm-8">
                                        <input v-model="up_harga" type="text" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button @click="update_harga" data-dismiss="modal" type="button" class="btn btn-primary">Save changes</button>
                            </div>
                            </div>
                        </div>
                    </div>
                </tbody>
            </table>
            </div>
            <hr>
        </div>
    </div>
  </div>
</template>

<script>
export default {
    data() {
        return {
            // update
            up_id: '',
            up_parameter: '',
            up_metode: '',
            up_harga: '',

            parameter: '',
            metode: '',
            harga: '',
            biaya_uji: [],
            txt_add: 'Add',
            total: [],
            txt_cetak: 'Cetak',

            // cetak
            cet_product_name: '',
            cet_no_test: '',
            cet_asal_sample: '',
            cet_date_report: '',
            cet_jenis_pemeriksaan: '',
        }
    },
    methods: {
        add_biaya_uji() {
            this.txt_add = "Adding..."
            axios({
                method: 'post',
                url: 'api/test-prices',
                data: {
                    parameter: this.parameter,
                    metode: this.metode,
                    harga: this.harga
                }
            })
            .then(response => {  
                this.biaya_uji.push(response.data)                
            })
            .catch(error => {
                console.log(error);                
            })
            .finally(response => {
                this.txt_add = "Add"
            })
        },
        get_biaya_uji() {
            axios.get('api/test-prices')
            .then(response => {
                this.biaya_uji = response.data                
            })
        },
        update_data_modal(id, parameter, metode, harga) {
            this.up_id = id
            this.up_parameter = parameter
            this.up_metode = metode
            this.up_harga = harga
        },
        update_harga() {
            axios({
                method: 'put',
                url: `api/test-prices/${this.up_id}`,
                data: {
                    id: this.up_id,
                    parameter: this.up_parameter,
                    metode: this.up_metode,
                    harga: this.up_harga,
                }
            })
            .then(response => {
                this.biaya_uji = response.data                                
            })
        },
        print_test_price() {
            this.txt_cetak = 'Cetak...'
            axios({
                method: 'post',
                url: 'api/print/test-prices',
                responseType: "arraybuffer",
                data: {
                    id: this.total,
                    product_name: this.cet_product_name,
                    no_test: this.cet_no_test,
                    asal_sample: this.cet_asal_sample,
                    date_report: this.cet_date_report,
                    jenis_pemeriksaan: this.cet_jenis_pemeriksaan
                }
            })
            .then(response => {                
                let blob = new Blob([response.data], {
                    type: "application/pdf"
                });
                let link = document.createElement("a");
                link.href = window.URL.createObjectURL(blob);
                link.download = "biaya uji.pdf";
                document.body.appendChild(link);
                link.click();       
            })
            .catch(error => {
                console.log(error);
            })
            .finally(response => {
                this.txt_cetak = "Cetak"
            })
        }
    },
    computed: {
        sum_harga() {
            let amount = 0
           for (let index = 0; index < this.total.length; index++) {
               amount += this.total[index]
               
           }
           return amount
        }
    },
    created() {
        this.get_biaya_uji()
    }
}
</script>

<style>

</style>