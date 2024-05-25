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
                <th>id Produk</th> 
                <th>nama produk</th>
                <th>merk</th>
                <th>Jenis kelamin</th>
                <th>ukuran</th>
                <th>warna</th>
                <th>harga beli</th>
                <th>harga jual</th>
                <th>stok</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($produk as $no => $pr)
            <tr>
                <td>{{ $no+1 }}</td>
                <td>{{ $pr -> id_produk }}</td>
                <td>{{ $pr -> nama_produk }}</td>
                <td>{{ $pr -> merk }}</td>
                <td>{{ $pr -> jenis_kelamin }}</td>
                <td>{{ $pr -> ukuran }}</td>
                <td>{{ $pr -> warna }}</td>
                <td>{{ $pr -> harga_beli }}</td>
                <td>{{ $pr -> harga_jual }}</td>
                <td>{{ $pr -> stok }}</td>
            </tr>
            @endforeach
        </tbody>
      </table>
</body>
</html>