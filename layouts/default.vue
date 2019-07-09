<template>
  <v-app>
    <v-toolbar class="navBar">
      <img>
        <img class="image" src="../static/logo.png"/>
        <span class="text"><a href="https://www.sunshare.fr/" target="_blank">Info Sunshare</a></span>
      </v-spacer>
    </v-toolbar>
    <v-container fluid>
      <nuxt/>
    </v-container>
  </v-app>
</template>


<script>
  export default {
    // methods: {
    //   redirect(path) {
    //     this.$router.push(path)
    //   }
    // }
  }
</script>

<style>
  .navBar{
    color: #efdd84;
  }
  .image{
    width: 5%;
  }
  .text{
    margin-left: 85%;
  }
</style>
