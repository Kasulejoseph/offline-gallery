<template>
    <div class="card">
        <div class="card-content">
            <img :src="collection.imageUrl" :alt="collection.author">
            <h4>{{collection.owner}}</h4>
            <p>{{collection.description}}</p>
        </div>
    </div>
</template>
<script>
export default {
  props: ['collection'],
  name: 'card'
}
</script>
<style>
  .card {
    background: #F5F5F5;
    padding: 10px;
    display: inline-block;
    margin: 0 0 1em;
    /* width: 100%; */
    cursor: pointer;
    transition: all 100ms ease-in-out;
    height: 30rem;
  }
  .card:hover {
    transform: translateY(-0.5em);
    background: #EBEBEB;
  }
  img {
    display: block;
    width: 100%;
    height: 14rem;
  }

  .card-content {
    width: auto;
  }

  @media (max-width: 767px) {
  .cards {
    column-count: 1;
  }
  }

  @media only screen and (min-width: 500px) {
  .cards {
    column-count: 2;
  }
}

@media only screen and (min-width: 700px) {
  .cards {
    column-count: 3;
  }
}

@media only screen and (min-width: 900px) {
  .cards {
    column-count: 4;
  }
}

@media only screen and (min-width: 1100px) {
  .cards {
    column-count: 4;
  }
}
</style>