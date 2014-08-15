$(function() {

    Morris.Area({
        element: 'morris-area-chart',
        data: [{
            period: '2010 Q1',
            petronect: 2666,
            VALE: null,
            LIGHT: 2647
        }, {
            period: '2010 Q2',
            petronect: 2778,
            VALE: 2294,
            LIGHT: 2441
        }, {
            period: '2010 Q3',
            petronect: 4912,
            VALE: 1969,
            LIGHT: 2501
        }, {
            period: '2010 Q4',
            petronect: 3767,
            VALE: 3597,
            LIGHT: 5689
        }, {
            period: '2011 Q1',
            petronect: 6810,
            VALE: 1914,
            LIGHT: 2293
        }, {
            period: '2011 Q2',
            petronect: 5670,
            VALE: 4293,
            LIGHT: 1881
        }, {
            period: '2011 Q3',
            petronect: 4820,
            VALE: 3795,
            LIGHT: 1588
        }, {
            period: '2011 Q4',
            petronect: 15073,
            VALE: 5967,
            LIGHT: 5175
        }, {
            period: '2012 Q1',
            petronect: 10687,
            VALE: 4460,
            LIGHT: 2028
        }, {
            period: '2012 Q2',
            petronect: 8432,
            VALE: 5713,
            LIGHT: 1791
        }],
        xkey: 'period',
        ykeys: ['petronect', 'VALE', 'LIGHT'],
        labels: ['Petronect', 'VALE', 'LIGHT'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Download Sales",
            value: 12
        }, {
            label: "In-Store Sales",
            value: 30
        }, {
            label: "Mail-Order Sales",
            value: 20
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2007',
            a: 75,
            b: 65
        }, {
            y: '2008',
            a: 50,
            b: 40
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });

});
