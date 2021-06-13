import glob
import os
import argparse

def preprocess_folder(folder_path):
    train_folder = os.path.join(folder_path, "images" ,"train")
    val_folder = os.path.join(folder_path, "images" ,"val")

    train_images = glob.glob(os.path.join(train_folder, "*"))
    val_images = glob.glob(os.path.join(val_folder, "*"))

    train_txt = os.path.join(folder_path, "train.txt")
    val_txt = os.path.join(folder_path, "val.txt")
    f_t = open(train_txt, "w")
    f_v = open(val_txt, "w")
    for image in train_images:
        f_t.write("%s\n"%(image))

    for image in val_images:
        f_v.write("%s\n"%(image))

    f_t.close()
    f_v.close()

parser = argparse.ArgumentParser("preprocess darknet format")
parser.add_argument("--input", default="data/datasets/VOC", help="Data folder")



if __name__ == '__main__':
    args = parser.parse_args()
    preprocess_folder(args.input)

