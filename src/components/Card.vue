<template>
    <div class="card">
        <div class="card-content">
            <img :src="collection.imageUrl" :alt="collection.author">
            <h4>{{collection.author}}</h4>
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