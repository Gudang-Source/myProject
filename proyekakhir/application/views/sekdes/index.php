<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Sekdes</h3>
             <div class="box-tools">
                    <a href="<?php echo site_url('sekdes/add'); ?>" class="btn btn-success btn-sm">Add</a> 
                </div>
            </div>
            <div class="box-body">
                <table class="table table-striped">
                    <tr>                
      <th>Nama Lengkap</th>
      <th>Alamat</th>
      <th>Tempat Tanggal Lahir</th>
      <th>No Telp</th>
      <th>Jenis Kelamin</th>
      <th>Agama</th>
      <th>Status</th>
      <th>Username</th>
      <th>Password</th>
                    </tr>
                    <?php foreach($sekdes as $t){ ?>
                    <tr>
      <td><?php echo $t['nama_lengkap']; ?></td>
      <td><?php echo $t['alamat']; ?></td>
      <td><?php echo $t['tempat_tanggal_lahir']; ?></td>
      <td><?php echo $t['no_telp']; ?></td>
      <td><?php echo $t['jenis_kelamin']; ?></td>
      <td><?php echo $t['agama']; ?></td>
      <td><?php echo $t['status']; ?></td>
      <td><?php echo $t['username']; ?></td>
      <td><?php echo $t['password']; ?></td>
      <td>
                            <a href="<?php echo site_url('sekdes/edit/'.$t['id_sekdes']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil"></span> Edit</a> 
                            <a href="<?php echo site_url('sekdes/remove/'.$t['id_sekdes']); ?>" class="btn btn-danger btn-xs"><span class="fa fa-trash"></span> Delete</a>
                        </td>
                    </tr>
                    <?php } ?>
                </table>
                                
            </div>
        </div>
    </div>
</div>