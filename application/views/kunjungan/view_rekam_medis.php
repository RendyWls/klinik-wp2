<section class="content mt-2">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card border-primary">
                    <div class="card-header bg-primary text-white">
                        Biodata Pasien
                    </div>
                    <div class="card-body">
                        <table class="table table-sm">
                            <tr>
                                <th>Nama Pasien</th>
                                <td>:</td>
                                <td><?= $d['nama_pasien']; ?></td>
                            </tr>
                            <tr>
                                <th>Jenis Kelamin</th>
                                <td>:</td>
                                <td><?= $d['jenis_kelamin']; ?></td>
                            </tr>
                            <tr>
                                <th>Umur</th>
                                <td>:</td>
                                <td><?= $d['umur']; ?></td>
                            </tr>
                            <tr>
                                <th>Alamat</th>
                                <td>:</td>
                                <td><?= $d['alamat']; ?></td>
                            </tr>
                            <tr>
                                <th>Nomor Telpon</th>
                                <td>:</td>
                                <td><?= $d['nomor_telpon']; ?></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="card border-info mt-4">
                    <div class="card-header bg-info text-white">
                        Riwayat Berobat
                    </div>
                    <div class="card-body">
                        <table class="table table-sm table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Tanggal Berobat</th>
                                    <th>Subjective</th>
                                    <th>Objective</th>
                                    <th>Asesment</th>
                                    <th>Plant</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php $no=1; foreach($riwayat as $r){ ?>
                                <tr>
                                    <td><?= $no; ?></td>
                                    <td><?= $r['tgl_berobat'] ?></td>
                                    <td><?= $r['subjective'] ?></td>
                                    <td><?= $r['objective'] ?></td>
                                    <td><?= $r['asesment'] ?></td>
                                    <td><?= $r['plan'] ?></td>
                                </tr>
                            <?php $no++; }?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card border-danger">
                    <div class="card-header bg-danger text-white">
                        Catatan Rekam Medis
                        <a href="<?= base_url('kunjungan'); ?>" class="btn btn-warning btn-sm float-right">Kembali</a>
                    </div>
                    <div class="card-body">
                        <form action="<?= base_url(); ?>kunjungan/insert_rekam" method="post">
                        <input type="hidden" name="id" value="<?= $d['id_berobat']; ?>">
                            <div class="form-group">
                                <label for="">Subjective</label>
                                <textarea name="subjective" class="form-control" required><?= $d['subjective']; ?></textarea>
                            </div>
                            <div class="form-group">
                                <label for="">Objective</label>
                                <textarea name="objective" class="form-control" required><?= $d['objective']; ?></textarea>
                            </div>
                            <div class="form-group">
                                <label for="">Asesment</label>
                                <textarea name="asesment" class="form-control" required><?= $d['asesment']; ?></textarea>
                            </div>

                            <div class="form-group">
                                <label for="">Plan</label>
                                <textarea name="plan" class="form-control" required><?= $d['plan']; ?></textarea>
                            </div>
                            <!-- <div class="form-group">
                                <label for="">Plan</label>
                                <select name="penatalaksanaan" id="" class="form-control" required>
                                    <option value="<?= $d['penatalaksanaan']; ?>" selected><?= $d['penatalaksanaan']; ?></option>
                                    <option value="Rawat Jalan">Rawat Jalan</option>
                                    <option value="Rawat Inap">Rawat Inap</option>
                                    <option value="Rujuk">Rujuk</option>
                                    <option value="Lainnya">Lainnya</option>
                                </select>
                            </div> -->
                            <button type="submit" class="btn btn-danger btn-sm">Simpan Data</button>
                        </form>
                    </div>
                </div>
                <div class="card border-success mt-4">
                    <div class="card-header bg-success text-white">
                        Resep Obat
                    </div>
                    <div class="card-body">
                        <form action="<?= base_url('kunjungan/insert_resep'); ?>" method="post">
                        <input type="hidden" name="id" value="<?= $d['id_berobat']; ?>">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <select name="obat" id="obat" class="form-control">
                                        <?php foreach($obat as $r){ ?>
                                            <option value="<?= $r['id_obat']; ?>"><?= $r['nama_obat']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <button type="submit" class="btn btn-success">+</button>
                            </div>
                        </div>
                        </form>
                        <hr>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Nama Obat</th>
                                    <th>#</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no = 1; foreach($resep as $r) { ?>
                                    <tr>
                                        <td><?= $no ?></td>
                                        <td><?= $r['nama_obat'] ?></td>
                                        <td>
                                            <a href="<?= base_url().'kunjungan/hapus_resep/'.$r['id_resep'].'/'.$r['id_berobat']; ?>" class="text-danger">X</a>
                                        </td>
                                    </tr>
                                <?php $no++; }?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>