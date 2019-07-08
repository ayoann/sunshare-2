<template>
  <v-app>
    <v-toolbar>
      <v-spacer></v-spacer>

      <!--<v-toolbar-items>-->
        <!--<v-btn flat @click="redirect('/login')">login</v-btn>-->
        <!--<v-btn flat @click="redirect('/register')">register</v-btn>-->
      <!--</v-toolbar-items>-->
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
