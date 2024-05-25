<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Data Sepatu</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #3b3f4d;
            color: #fff:
        }
        center{
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <center>Laporan Data Sepatu</center>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>NO.</th>
                <th>id Detail Transaksi Pembelian</th> 
                <th>id Transaksi Pembelian</th>
                <th>id Produk</th>
                <th>Jumlah</th>
                <th>Harga Satuan</th>
                <th>id User</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($transaksi as $no => $trs)
            <tr>
                <td>{{ $no+1 }}</td>
                <td>{{ $trs -> id_detail_transaksi_pembelian }}</td>
                <td>{{ $trs -> id_transaksi_pembelian }}</td>
                <td>{{ $trs -> id_produk }}</td>
                <td>{{ $trs -> jumlah }}</td>
                <td>{{ $trs -> harga_satuan }}</td>
                <td>{{ $trs -> id_user }}</td>
            </tr>
            @endforeach
        </tbody>
      </table>
</body>
</html>