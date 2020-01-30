<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Biaya Uji</title>
    <style>
    @page{
        margin: 3cm 1.5cm;
    }
    .judul{
        width: 100%;
        text-align: center;
        font-size: 16px;
        font-weight: bold
    }
    .subjudul{
        width: 100%;
        text-align: center;
        font-size: 14px;
        font-weight: 650
    }
    td, th{
        padding: 5px;
        font-size: 12px
    }
    .list td, th {
        border: 1px solid #c9d6c9; 
        border-collapse: collapse;
    }
    .list{
        border: 1px solid #c9d6c9; 
        border-collapse: collapse;
        font-size: 12px;
        margin-top: 10px
    }
    p, ol {
        text-align: justify;
        font-size: 13px
    }
    .bodylist tr:nth-child(even) {background: #fff}
    .bodylist tr:nth-child(odd) {background: #cedace7a}
    .bodyttd{
        text-align: right;
        width: 100%;
        min-height: 50px;
        background: yellow
    }
    .isi{
        /* float:right */
    }
    </style>
</head>
<body>

    <img src="https://cdn.worldvectorlogo.com/logos/pertamina-logo-1.svg" style="width: 450px; position: fixed; right: -40%; top: 10px" alt="">

    <div class="judul">PT. PERTAMINA (PERSERO)</div>
    <div class="subjudul">LABORATORIUM TBBM JAKARTA GROUP - PLUMPANG</div>
    <h2 style="text-align: center; margin: 5px">DAFTAR BIAYA UJI</h2>
    <p style="text-align: center; margin: 0">Jl. Yos Sudarso Jembatan I, Plumpang - Jakarta Utara 14230</p>
    <p style="text-align: center; margin: 0">Phone: +6221-43923156, Fax: +6221-43903367, E-mail: lab.plp@pertamina.com</p>
    
    <div style="width: 100%; height: 5px; background: black; margin-top: 10px"></div>
    <div style="width: 100%; height: 1px; background: black; margin-top: 5px; margin-bottom: 15px"></div>
    
    <table style="width: 100%" class="ket">
        <tr>
            <td>Jenis Sample</td>
            
            <td>: <strong>{{ strtoupper($product_name) }}</strong></td>
            <td>No. Test Report</td>
            <td>: <strong>{{ $no_test }}</strong></td>
        </tr>
        <tr>
            <td>Asal Sample</td>
            <td>: <strong>{{ strtoupper($asal_sample) }}</strong></td>
            <td>Tanggal Test Report</td>
            <td>: {{ $date_report }}</td>
        </tr>
        <tr>
            <td>Tanggal Pengambilan Sample</td>
            <td>: {{ $date_report }}</td>
            <td>Tanggal Pemeriksaan</td>
            <td>: {{ $date_report }}</td>
        </tr>
        <tr>
            <td>Tanggal Terima Sample</td>
            <td>: {{ $date_report }}</td>
            <td>Jenis Pemeriksaan</td>
            <td>: <strong>{{ ucwords($jenis_pemeriksaan) }}</strong></td>
        </tr>
    </table>

    <table style="width: 100%;" class="list">
    <thead style="background: #c9d6c9!important; text-align: center; padding: 3px">
        <tr>
            <th>No</th>
            <th>Parameter</th>
            <th>Test Method</th>
            <th>Harga</th>
        </tr>
    </thead>
    <tbody class="bodylist">
        @foreach($data as $k => $d)
        <tr>
            <td>{{ $k+1 }}</td>
            <td>{{ $d->parameter }}</td>
            <td>{{ $d->metode }}</td>
            <td>RP. {{ number_format($d->harga, 2, '.', ',') }}</td>
        </tr>
        @endforeach
        <tr>
            <td colspan="3">Total Biaya Uji</td>
            <td>RP. {{ number_format($total, 2, '.', ',') }}</td>
        </tr>
    </tbody>
    </table>


</body>
</html>