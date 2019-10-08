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
        font-weight: 550
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
        <li>Spv. QQ</li>
        <li>Jr.Spv.Distribution</li>
    </ol>
    
    </div>
    <em>Dokumen ini dinyatakan sah walaupun tanpa tanda tangan pejabat ybs, dicetak dari sistem Electronic Test Report Online</em>
    </footer>


    <img src="https://cdn.worldvectorlogo.com/logos/pertamina-logo-1.svg" style="width: 450px; position: fixed; right: -40%; top: 10px" alt="">

    <div class="judul">PT. PERTAMINA (PERSERO)</div>
    <div class="subjudul">Terminal BBM Tanjung Priok, Jl. Jampea No. 1, Jakarta Utara</div>
    
    <div style="width: 100%; height: 5px; background: black; margin-top: 20px"></div>
    <div style="width: 100%; height: 1px; background: black; margin-top: 5px; margin-bottom: 15px"></div>

    <div style="text-align: center; font-size: 13px; font-weight: bold; margin-bottom: 5px">Test Report</div>
    <div style="text-align: center; font-size: 13px; font-weight: bold; margin-bottom: 14px;">No. TR-1003-PR/F13431/2018</div>
    
    <table style="width: 30%">
        <tr>
            <td>Nama Pelanggan</td>
            <td>: SPBU</td>
        </tr>
        <tr>
            <td>Produk</td>
            <td>: {{ ucwords($produk) }}</td>
        </tr>
        <tr>
            <td>No. Tangki</td>
            <td>: T.22</td>
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
            <th>COQ</th>
            <th>Before</th>
            <th>After</th>
            <th>Dist.</th>
        </tr>
    </thead>
    <tbody class="bodylist">
        @foreach($data as $d)
        <tr>
            <td>{{ $d->parameter }}</td>
            <td>{{ $d->metode }}</td>
            <td>{{ $d->unit }}</td>
            <td>{{ $d->limit_min }}</td>
            <td>{{ $d->limit_max }}</td>
            <td>{{ $d->coq_value }}</td>
            <td>{{ $d->before_value }}</td>
            <td>{{ $d->after_value }}</td>
            <td>{{ $d->distribution_value }}</td>
        </tr>
        @endforeach
    </tbody>
    </table>

    <p>Catatan :</p>
    <ol>
        <li>Sesuai keputusan Direktorat Jendral Minyak dan Gas Bumi No. 28.K/10/DJM.T/2016 tanggal 24 Februari 2016 tentang Standar dan Mutu (Spesifikasi) Bahan Bakar Minyak Solar 48 yang Dipasarkan di Dalam Negeri.</li>
        <li>Hasil pengujian sampel memenuhu spesifikasi Dirjen Migas</li>
        <li>FS GANTRY</li>
    </ol>

    <!-- ttd -->
    <table align="right" border="0" style="margin-top: 50px">
        <tr border="0">
            <td>Jakarta Utara, {{ $date }}</td>
        </tr>
        <tr>
            <td>Pengawas Quality & Quantity</td>
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
            <td>Merwinanto Ceswono</td>
        </tr>
    </table>
</body>
</html>