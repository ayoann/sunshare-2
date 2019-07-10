<template>
    <v-layout row wrap>
        <v-flex xs6 sm6>
            <div class="card1">
                <v-card>
                    <canvas id="myChart" ref="chart"></canvas>
                </v-card>
            </div>
        </v-flex>
        <v-flex xs6 sm6>
            <div class="card2">
                <v-card>
                    <canvas ref="chart2"></canvas>
                </v-card>
            </div>
        </v-flex>
    </v-layout>
</template>

<script>
    import Chart from 'chart.js';

    export default {
        name: 'app',
        mounted() {
            var chart = this.$refs.chart;
            var ctx = chart.getContext("2d");
            var myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ["15:00", "15:15", "15:30", "15:45", "16:00", "16:15", "16:30", "16:45", "17:00", "17:15", "17:30"],
                    datasets: [{
                        label: 'Inject',
                        data: [345, 404, 300, 320, 349, 400, 300, 315, 415, 288, 301, 360],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255,99,132,1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }, {
                        label: 'Soutir',
                        data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                        backgroundColor: [
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }, {
                        label: 'Autoconso',
                        data: [288, 349, 519, 500, 340, 350, 280, 404, 540, 380, 310],
                        backgroundColor: [
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });

            var chart2 = this.$refs.chart2;
            var ctx2 = chart2.getContext("2d");
            var myChart2 = new Chart(ctx2, {
                type: 'line',
                data: {
                    labels: ["15:00", "15:15", "15:30", "15:45", "16:00", "16:15", "16:30", "16:45", "17:00", "17:15", "17:30"],
                    datasets: [{
                        label: 'Production',
                        data: [748, 800, 850, 730, 700, 631, 640, 750, 810, 735, 820],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255,99,132,1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }, {
                        label: 'Consommation',
                        data: [288, 300, 500, 519, 320, 404, 280, 490, 315, 290, 300],
                        backgroundColor: [
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });





        }
    }
</script>



<style scoped>
    .card1{
        margin-right: 30px;
    }
    .card2{
        margin-left: 30px;
    }

    #app {
        font-family: 'Avenir', Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        color: #2c3e50;
        margin-top: 60px;
    }
    #content {
        margin: auto;
        width: 1024px;
        background-color: #FFFFFF;
        padding: 20px;
    }
</style>
