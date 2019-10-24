<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Test Report</title>
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
    <footer style="position: fixed; bottom: 60px; width: 100%; text-align: center; font-size: 13px">
    <div style="margin-bottom: 40px">
    <p>Daftar Distribusi:</p> 
    <ol>
        @foreach($dist_detail as $d)
            <li>{{ $d }}</li>
        @endforeach
    </ol>
    
    </div>
    <em>Dokumen ini dinyatakan sah walaupun tanpa tanda tangan pejabat ybs, dicetak dari sistem Electronic Test Report Online</em>
    </footer>

    <img src="https://cdn.worldvectorlogo.com/logos/pertamina-logo-1.svg" style="width: 450px; position: fixed; right: -40%; top: 10px" alt="">

    <div class="judul">PT. PERTAMINA (PERSERO)</div>
    <div class="subjudul">LABORATORIUM TBBM JAKARTA GROUP - PLUMPANG</div>
    <h2 style="text-align: center; margin: 5px">TEST REPORT</h2>
    <p style="text-align: center; margin: 0">Jl. Yos Sudarso Jembatan I, Plumpang - Jakarta Utara 14230</p>
    <p style="text-align: center; margin: 0">Phone: +6221-43923156, Fax: +6221-43903367, E-mail: lab.plp@pertamina.com</p>
    
    <div style="width: 100%; height: 5px; background: black; margin-top: 10px"></div>
    <div style="width: 100%; height: 1px; background: black; margin-top: 5px; margin-bottom: 15px"></div>
    


    <table style="width: 100%" class="ket">
        <tr>
            <td>Jenis Sample</td>
            <td>: <strong>{{ strtoupper($title[0]->product_name) }}</strong></td>
            <td>No. Test Report</td>
            <td>: <strong>{{ $keterangan->no_test }}</strong></td>
        </tr>
        <tr>
            <td>Asal Sample</td>
            <td>: <strong>{{ strtoupper($keterangan->asal_sample) }}</strong></td>
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
            <td>: <strong>{{ ucwords($keterangan->jenis_pemeriksaan) }}</strong></td>
        </tr>
    </table>

    <table style="width: 100%;" class="list">
    <thead style="background: #c9d6c9!important; text-align: center; padding: 3px">
        <tr>
            <th>Parameter</th>
            <th>Test Method</th>
            <th>Unit</th>
            <th>Limitation Min</th>
            <th>Limitation Max</th>
            <th>Result</th>
        </tr>
    </thead>
    <tbody class="bodylist">
        @foreach($master_data as $k => $d)
        <tr>
            <td>{{ $d->parameter }}</td>
            <td>{{ $d->metode }}</td>
            <td>{{ $d->unit }}</td>
            <td>{{ $d->limit_min }}</td>
            <td>{{ $d->limit_max }}</td>
            <td>{{ $value[$k] }}</td>
        </tr>
        @endforeach
    </tbody>
    </table>

    <p>Catatan :</p>
    <ol>
        <li>Sesuai keputusan Direktorat Jendral Minyak dan Gas Bumi No. 28.K/10/DJM.T/2016 tanggal 24 Februari 2016 tentang Standar dan Mutu (Spesifikasi) Bahan Bakar Minyak Solar 48 yang Dipasarkan di Dalam Negeri.</li>
        <li>Hasil uji hanya berkaitan dengan bahan yang diuji</li>
    </ol>

    <!-- ttd -->
    <table align="right" border="0" style="margin-top: 50px">
        <tr border="0">
            <td>Jakarta Utara, {{ $date }} </td>
        </tr>
        <tr>
            <td>{{ $penandatangan[0] }}</td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>{{ $penandatangan[1] }}</td>
        </tr>
    </table>
</body>
</html>