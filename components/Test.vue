<template>
    <v-flex xs12 sm12>
        <v-card>
            <div class="weather">
                <chartist
                        ratio="ct-major-second"
                        type="Line"
                        :data="chartData"
                        :options="chartOptions" >
                </chartist>

                <v-card-title primary-title>
                    <div>
                        <div class="headline">Top western road trips</div>
                        <span class="grey--text">1,000 miles of wonder</span>
                    </div>
                </v-card-title>
            </div>
        </v-card>
    </v-flex>
</template>

<script>
    export default {
        name: "Test",
        data: () => ({
        conso: [123, 12355, 1345],
        chartData: {
            labels: ["A", "B", "C"],
            series:[[1, 3, 2], [4, 6, 5]]
        },
        chartOptions: {
            // lineSmooth: false
        }
    }),
    async mounted() {
        const MongoClient = require('mongodb').MongoClient;

        const uri = "mongodb+srv://stagiaire:7qN6W4sbqJUpds5k@sunshare-i1u0f.mongodb.net/sunshare?retryWrites=true&w=majority";

        const client = new MongoClient(uri, { useNewUrlParser: true });

        client.connect(err => {
            const collection = client.db("sunshare").collection("sunshare");
// perform actions on the collection object
        client.close();
    });





        //this.conso = await this.$axios.$get('mongodb+srv://stagiaire:7qN6W4sbqJUpds5k@sunshare-i1u0f.mongodb.net/sunshare?retryWrites=true&w=majority')
        //const client = await mongodb

        console.log(this.conso);
    }
    }
</script>

<style scoped>
    .weather{
        margin-bottom: 30px;
    }
</style>
