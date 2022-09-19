Given 'user berada di homepage "Pelanggan-06"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

When 'user edit pelanggan "Pelanggan-06"' do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_ubahpelanggan.click
    el_nama = @app.pelanggan.txtField_ubah_NamaPelanggan
    nama_pel = el_nama.text
    p nama_pel
    pel = nama_pel[0..-8]
    @app.pelanggan.txtField_ubah_NamaPelanggan.send_keys pel+"A"
    @app.pelanggan.btn_simpan_ubahPelanggan.click
    sleep(2)
    @app.pelanggan.btn_close.click
    @app.pelanggan.btn_back.click

end

Then 'data pelanggan berhasil disimpan "Pelanggan-06"' do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Scenario Berhasil'

end
