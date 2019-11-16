<template>
  <div id="app">
    <header>
      <span>My Offline Gallery</span>
    </header>
    <main>
      <div class="wrapper">
        <div class="cards">
          <Card v-for="collection in collections" :key="collection.imageId" :collection="collection"/>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
import Card from './components/Card'
import data from './data.json'
import cloudinary from 'cloudinary-core'
export default {
  name: 'app',
  data () {
    return {
      cloudinary: null,
      collections: []
    }
  },
  mounted () {
    this.cloudinary = cloudinary.Cloudinary.new({
      cloud_name: process.env.VUE_APP_SECRET
    })
    this.collections = data.map(this.transfrom)
  },
  components: {
    Card
  },
  methods: {
    transfrom (collection) {
      const imageUrl = this.cloudinary.url(collection.imageId, {width: 300, crop: 'fit', quality: 'auto', secure: true})
      return Object.assign(collection, {imageUrl})
    }
  }
}
</script>

<style>
body {
  margin: 0;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}

main {
  text-align: center;
  margin-top: 40px;
}

.wrapper {
  padding: 15px;
}

header {
  margin: 0;
  height: 56px;
  padding: 0 16px 0 24px;
  background-color: #000;
  color: #ffffff;
}

header span {
  display: block;
  position: relative;
  font-size: 20px;
  line-height: 1;
  letter-spacing: .02em;
  font-weight: 400;
  box-sizing: border-box;
  padding-top: 16px;
}
.cards {
  column-count: 3;
  column-gap: 1em; 
}

</style>
