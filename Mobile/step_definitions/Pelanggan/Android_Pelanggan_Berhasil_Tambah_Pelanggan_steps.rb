require 'date'

Given 'user berada di homepage "Pelanggan-05"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And 'user tambah pelanggan "Pelanggan-05"' do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_tambahpelanggan.click
end

And 'user input semua field "Pelanggan-05"' do
    current_time = DateTime.now
    time = current_time.strftime "%d-%m-%Y %H:%M"
    num = rand.to_s[2..11]
    @app.pelanggan.txtField_nama_pelanggan.click
    @app.pelanggan.txtField_nama_pelanggan.send_keys "Automation "+time
    @app.pelanggan.txtField_nohp_pelanggan.click
    @app.pelanggan.txtField_nohp_pelanggan.send_keys "08"+num
end

When 'user simpan "Pelanggan-05"' do
    @app.pelanggan.btn_simpan.click

end

Then 'pelanggan berhasil disimpan "Pelanggan-05"' do
    expect(@app.pelanggan.btn_pilihpelanggan.displayed?).to be true
    @app.pelanggan.btn_close.click
    @app.pelanggan.btn_back.click
    p 'Scenario Berhasil'

end
