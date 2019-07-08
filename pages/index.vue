<template>
  <v-layout row wrap>
    <Test/>
      <v-flex xs6 sm6>
        <v-card>
          <v-img
            src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
            height="200px"
          >
          </v-img>

          <v-card-title primary-title>
            <div>
              <div class="headline">Top western road trips</div>
              <span class="grey--text">1,000 miles of wonder</span>
            </div>
          </v-card-title>

          <v-card-actions>
            <v-btn flat @click="x">Share</v-btn>
            <v-btn flat color="purple">Explore</v-btn>
            <v-spacer></v-spacer>
          </v-card-actions>
        </v-card>
      </v-flex>
    <v-flex xs6 sm6>
      <v-card>
        <v-img
          src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
          height="200px"
        >
        </v-img>

        <v-card-title primary-title>
          <div>
            <div class="headline">Top western road trips</div>
            <span class="grey--text">1,000 miles of wonder</span>
          </div>
        </v-card-title>

        <v-card-actions>
          <v-btn flat @click="x">Share</v-btn>
          <v-btn flat color="purple">Explore</v-btn>
          <v-spacer></v-spacer>
        </v-card-actions>
      </v-card>
    </v-flex>
  </v-layout>


</template>

<script>
    import Test from '@/components/Test'

    export default {
      layout: 'default',
      // Méthode au chargement de la vue
      async mounted() {
        // this.conso = await this.$axios.$get('https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22')
        //
        // console.log(this.conso);
      },
      methods: {
        x() {
          // this.conso = await this.$axios.$get('URL')
          console.log('coucou');
        }
      },
      components: {Test}
    }
</script>

<style scoped>

</style>
