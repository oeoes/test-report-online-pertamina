<template>
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
                    <label class="col-sm-4 col-form-label">Product name</label>
                    <div class="col-sm-8">
                        <input v-model="product" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div @click="add_product" class="btn btn-primary circle pl-4 pr-4">Add</div>
                </div>
                <hr>
            </form>

            <div class="row">
                <div v-for="(product, index) in products" :key="index" class="col-md-4">
                    <div class="card p-3 text-center animated zoomInDown shadow-sm" style="position: relative">
                        <span @click="delete_product(product.id, index)" class="cross">x</span>
                        {{ product.product_name }}
                    </div>
                </div>
            </div>

        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            product: '',
            products: []
        }
    },
    methods: {
        add_product() {
            axios({
                method: 'post',
                url: 'api/products',
                data: {
                    product_name: this.product
                }
            })
            .then(response => {  
                this.products.push(response.data.new)                           
            })
            .catch(error => {
                console.log(error);                
            })
        },
        get_products() {
            axios.get('api/products')
            .then(response => {
                this.products = response.data              
            })
        },
        delete_product(id, index) {
            axios({
                method: 'delete',
                url: `api/products/${id}`,
            })
            .then(response => {
                console.log(response);                
            })
            .catch(error => {
                console.log(error);                
            })

            this.products.splice(index, 1)
        }
    },
    created() {
        this.get_products()
    }
}
</script>

<style>
.cross {
    position: absolute;
    right: -10px;
    top: -12px;    
    width: 20px;
    height: 20px;
    cursor: pointer;
    background: rgb(211, 8, 8);
    border-radius: 33px;
    color: white;
}
.cross:hover{
    background: red
}
</style>