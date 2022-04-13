<!-- <script>
import axios from "axios";

export default {
  data: function () {
    return {
      message: "Check out the goods!",
      products: [],
    };
  },
  created: function () {
    console.log("in created...");
    this.productsIndex();
  },
  methods: {
    productsIndex: function () {
      console.log("in products...")
      axios.get(`http://localhost:3000/products.json`).then(response => {
        console.log(response.data);
        this.products = response.data;
      })
    },
  },
};
</script>

<template>
  <div class="products-index">
    <h1>{{ message }}</h1>
    <br>
    <div v-for="product in products" v-bind:key="product.id">
      <p><b>{{ product.name }}</b></p>
      <br>
      <img v-bind:src="product.first_image" />
      <p><b>Description:</b> {{ product.description }}</p>
      <hr>
    </div>
  </div>
</template>

<style>
img {
  width: 400px
}
</style> -->


<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Check out the goods!",
      products: [],
    };
  },
  created: function () {
    console.log("in created...");
    this.productsIndex();
  },
  methods: {
    productsIndex: function () {
      console.log("in products...")
      axios.get(`http://localhost:3000/products.json`).then(response => {
        console.log(response.data);
        this.products = response.data;
      })
    },
  },
};
</script>

<template>
  <div class="products-index">
    <h1>{{ message }}</h1>
    <br>
    <div v-for="product in products" v-bind:key="product.id">
      <p>{{ product.name }}</p>
      <br>
      <img v-bind:src="product.first_image" />
      <p>Description: {{ product.description }}</p>
      <!-- <img v-bind:src="product.images.first()" v-bind:alt="product.name"> -->
    </div>
  </div>
</template>

<style>
img {
  width: 400px
}
</style>