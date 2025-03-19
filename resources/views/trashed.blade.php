<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>حذف سجلات لارافيل بشكل ناعم - استعادة السجلات، الحذف القسري، جلب السجلات المحذوفة والحذف الناعم</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css" />
</head>
<body>
    <div class="container">
        <h1 class="text-center text-success pt-4">حذف سجلات لارافيل بشكل ناعم - استعادة السجلات، الحذف القسري، جلب السجلات المحذوفة والحذف الناعم</h1>
        <hr>
    <div class="row py-2">
        <div class="col-md-6">
            <h2>استعادة المستخدمين المحذوفين</h2>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <b><a class="btn btn-default m-2" href="/"><i class="fa fa-thin fa-newspaper"></i> قائمة المستخدمين</a>
                <a class="btn btn-default m-2" href="trashed"> <i class="fa fa-duotone fa-trash"></i> المحذوفات</a></b>
            </div>
        </div>
    </div>
    <h3><a class="btn btn-success" href="/restore-all"><i class="fa fa-sharp fa-solid fa-trash-arrow-up"></i> استعادة الكل</a></h3>
    <table id="example" class="table table-bordered table-hover display">
        <thead>
            <tr>
                <th scope="col">الرقم</th>
                <th scope="col">الاسم</th>
                <th scope="col">البريد الإلكتروني</th>
                <th scope="col">استعادة</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $rs)
                <tr>
                    <th scope="row">{{$rs->id}}</th>
                    <td>{{$rs->name}}</td>
                    <td>{{$rs->email}}</td>
                    <td><a href="restore/{{$rs->id}}" class="text-primary btn"><i class="fa fa-sharp fa-solid fa-trash-arrow-up"></i></a></td>
                </tr>
            @endforeach
        </tbody>
    </table>
    </div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script>
 $(document).ready(function () {
    $('#example').DataTable();
});
</script>
</body>
</html>
