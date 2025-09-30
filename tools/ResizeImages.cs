using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;

class ResizeImages {
    static void Main(string[] args) {
        string dir = args.Length > 0 ? args[0] : "images";
        if (!Directory.Exists(dir)) {
            Console.WriteLine($"Directory not found: {dir}");
            return;
        }
        foreach (var file in Directory.GetFiles(dir, "*.png")) {
            using (var img = Image.FromFile(file)) {
                using (var thumb = new Bitmap(100, 100)) {
                    using (var g = Graphics.FromImage(thumb)) {
                        g.InterpolationMode = InterpolationMode.HighQualityBicubic;
                        g.DrawImage(img, 0, 0, 100, 100);
                    }
                    thumb.Save(file, ImageFormat.Png);
                    Console.WriteLine($"Resized: {Path.GetFileName(file)} -> 100x100");
                }
            }
        }
    }
}
