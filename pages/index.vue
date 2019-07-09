<template>
  <v-layout row wrap>
    <v-flex>
      <Test/>
      <Charts/>
      <Measures/>
    </v-flex>
  </v-layout>
</template>

<script>
    import Test from '@/components/Test'
    import Measures from '@/components/Measures'
    import Charts from '@/components/Charts'

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
      components: {
        Test,
        Measures,
        Charts
      }
    }
</script>

<style scoped>

</style>
