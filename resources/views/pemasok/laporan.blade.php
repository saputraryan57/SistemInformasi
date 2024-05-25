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
                <th>id Pemasok</th> 
                <th>nama Pemasok</th>
                <th>alamat</th>
                <th>nomor telepon</th>
                <th>email</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($pemasok as $no => $pm)
            <tr>
                <td>{{ $no+1 }}</td>
                <td>{{ $pm -> id_pemasok }}</td>
                <td>{{ $pm -> nama_pemasok }}</td>
                <td>{{ $pm -> alamat }}</td>
                <td>{{ $pm -> nomor_telepon }}</td>
                <td>{{ $pm -> email }}</td>
            </tr>
            @endforeach
        </tbody>
      </table>
</body>
</html>