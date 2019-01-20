#!/usr/bin/env python
# @author: zhaoyafei
from __future__ import print_function
import os
import os.path as osp

# re_pattern = '<segmented>35</segmented>'
re_pattern = '<segmented>'


def count_faces_in_xml(fn):
    cnt = 0
    with open(fn, 'r') as fp:
        for line in fp:
            line = line.strip()
            if line.startswith('<segmented>'):
                cnt += 1

    return cnt


def count_faces_in_dir(root_dir):
    total_faces = 0

    for sub_dir in os.listdir(root_dir):
        sub_dir2 = osp.join(root_dir, sub_dir)
        if osp.isdir(sub_dir2):
            for fn in os.listdir(sub_dir2):
                if fn.endswith('.xml'):
                    fn = osp.join(sub_dir2, fn)
                    cnt = count_faces_in_xml(fn)
                    print("---> In %s: %d  annotated faces" % (fn, cnt))
                    total_faces += cnt

    return total_faces


if __name__ == '__main__':
    data_dirs = ['WIDER_train_annotation', 'WIDER_val_annotation']

    for _dir in data_dirs:
        total_faces = count_faces_in_dir(_dir)

        print('---> %s: %d annotated faces' % (_dir, total_faces))

    # """
    # Results:
    # ---> WIDER_train_annotation: 158988 annotated faces
    # ---> WIDER_val_annotation: 39495 annotated faces
    # """
